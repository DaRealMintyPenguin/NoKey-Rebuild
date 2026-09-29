# NoKey Storage v1.4.0

PIN-protected compensation lockers for **Qbox/qbx_core**, **ox_inventory**, **JG Advanced Garages**, and **JG Dealerships**.

### v1.4.0 fixes

- Fixed **Create Locker** not appearing for `group.admin` staff by separating the ACE principal (`group.admin`) from the ACE permission object (`admin`).
- Reworked vehicle voucher use to the recommended `ox_inventory` client-export flow, while retaining the old server export as a compatibility fallback.
- Voucher redemption now re-reads the exact inventory slot server-side, atomically claims the voucher, creates the vehicle, then removes that exact voucher item.

This build has been adjusted against the copies you supplied of:

- `jg-advancedgarages` **v3.2.8**
- `jg-dealerships`

## What it does

- Multiple physical NoKey storage terminals around the city.
- Normal players only see **Open Locker**.
- Staff in the `group.admin` ACE principal also see **Create Locker**.
- Staff create a storage box number, PIN, label, slot count, and weight capacity in the NUI.
- Every locker is a persistent `ox_inventory` stash with no item whitelist/blacklist, so normal inventory items can be stored in it.
- Players need both the box number and PIN every time they open a locker.
- PINs are stored as SHA-256 hashes rather than plaintext.
- Server distance checks and an `ox_inventory` `openInventory` hook stop clients bypassing the PIN by calling the stash ID directly.
- Incorrect PIN attempts are rate limited.
- `/vehiclecomp <model> [playerId]` creates a one-time vehicle compensation item with metadata.
- Vehicle compensation items can be put into the locker like any other item.
- Using the voucher adds the owned vehicle directly to the player's correct JG garage.
- Vehicle vouchers are server-backed and one-time-use to prevent duplicate redemption.

## Vehicle routing for your JG setup

Your supplied JG Advanced Garages config contains these public garages:

```lua
Config.VehicleComp.garages = {
    car = 'Legion Square',
    air = 'Hangar',
    sea = 'Boats',
}
```

The resource validates those names by reading the live `jg-advancedgarages/config/config.lua` installed on the server. It **does not rely on a `getAllGarages()` export**.

Vehicle type detection is tailored to your JG Dealerships database:

1. Check `Config.VehicleComp.typeOverrides`.
2. Look up the model in `dealership_vehicles`.
3. `planes` / `helicopters` => **air**.
4. `boats` => **sea**.
5. All normal dealership categories => **car**.
6. If not in JG Dealerships, fall back to Qbox shared vehicle data.

This means a dealership aircraft automatically receives the Hangar garage and a dealership boat automatically receives the Boats garage.

## Vehicle creation

The voucher redemption now mirrors the Qbox insert used by your supplied `jg-dealerships` instead of depending on `qbx_vehicles:CreatePlayerVehicle`.

It creates the row in `player_vehicles` with:

- `license`
- `citizenid`
- `vehicle`
- `hash`
- `mods`
- a unique `NKxxxxxx` plate
- `in_garage = 1`
- the correct JG `garage_id`
- normal personal vehicle job/gang/impound flags

That makes the compensation vehicle immediately visible to JG Advanced Garages as a stored personal vehicle.

## Dependencies

Start this resource after:

- `ox_lib`
- `oxmysql`
- `qbx_core`
- `ox_inventory`
- `jg-advancedgarages`
- `jg-dealerships`

`qbx_vehicles` is **not required by this resource anymore**.

Example:

```cfg
ensure ox_lib
ensure oxmysql
ensure qbx_core
ensure ox_inventory
ensure jg-advancedgarages
ensure jg-dealerships
ensure nokey_storage
```

Use your existing dependency/start order if it already works; the key point is that `nokey_storage` starts afterwards.

## Single-resource prop build

The locker shell, door models, texture dictionary and archetype are now streamed by `nokey_storage` itself. You can remove the separate `bzzz_shop_locker` folder from `resources` after replacing your old NoKey Storage build.

## Installation

### 1. SQL

Run:

```text
install/nokey_storage.sql
```

### 2. ox_inventory vehicle compensation item

Copy the entry from:

```text
install/ox_inventory_item.lua
```

into the table returned by:

```text
ox_inventory/data/items.lua
```

Copy:

```text
install/vehicle_comp.png
```

into:

```text
ox_inventory/web/images/vehicle_comp.png
```

Restart `ox_inventory` after changing its item definitions.

**Important for upgrading from v1.3.0:** replace the old `vehicle_comp` item entry. v1.4.0 uses the recommended ox_inventory client export:

```lua
client = {
    image = 'vehicle_comp.png',
    export = 'nokey_storage.useVehicleComp'
}
```

The vehicle itself is still awarded and validated entirely on the server; the client export only starts the ox_inventory use flow and sends the inventory slot to the secure redemption callback.

### 3. Storage terminal locations

Edit `Config.Locations` in `config.lua`:

```lua
Config.Locations = {
    { label = 'NoKey Storage - City', coords = vec3(0.0, 0.0, 0.0) },
}
```

Add as many physical terminals as you want. Every box can be accessed from every configured NoKey terminal.

### 4. Admin permission

Defaults:

```lua
Config.AdminPrincipal = 'group.admin'
Config.AdminPermission = 'admin'
```

`group.admin` is the **principal/group** used to restrict `/vehiclecomp`; `admin` is the **ACE object** checked by the NUI/server permission test. Do not change `AdminPermission` to `group.admin` — checking a principal as an ACE object is what caused the Create Locker tab to be hidden in the previous build.

If your server uses a different staff principal or ACE object, change those two values independently.

## Player locker flow

1. Walk to a NoKey storage terminal.
2. Press **E**.
3. Normal players see **Open Locker**.
4. Enter the storage box number and PIN.
5. The server verifies the PIN and grants a short-lived authorisation for that exact stash.
6. `ox_inventory` opens the stash.
7. Closing the stash clears the authorisation.

## Staff locker flow

Admins also see **Create Locker** in the same NUI.

Staff can set:

- box number
- PIN
- locker label
- slots
- maximum weight

The locker is saved in MySQL and re-registered automatically after resource/server restarts.

## Vehicle compensation command

Give yourself a voucher so you can put it in a compensation locker:

```text
/vehiclecomp adder
```

Give it directly to an online player:

```text
/vehiclecomp adder 12
```

Aircraft example:

```text
/vehiclecomp luxor2
```

If `luxor2` is categorised as `planes` in `dealership_vehicles`, the voucher routes it to `Hangar` automatically.

Boat example:

```text
/vehiclecomp dinghy
```

If the model is categorised as `boats`, it routes to `Boats`.

## Addon vehicle overrides

If a custom vehicle is not present in JG Dealerships or Qbox shared vehicle data, declare its type manually:

```lua
Config.VehicleComp.typeOverrides = {
    ['customplane'] = 'air',
    ['customboat'] = 'sea',
    ['customcar'] = 'car',
}
```

The actual model still needs to exist/stream correctly on your server.

## Security / anti-duplication

- NUI visibility is cosmetic only; admin actions are independently checked server-side.
- Locker access and locker creation require the player to be physically close to a configured terminal.
- PIN values are hashed in MySQL with `SHA2(..., 256)`.
- NoKey stash opens are blocked by the `ox_inventory` hook unless the player has just completed a valid PIN challenge.
- Vehicle voucher metadata is display information only. The authoritative model/type/garage/status is stored server-side in `nokey_vehicle_vouchers`.
- Redemption atomically moves a voucher from `issued` -> `redeeming` before creating the vehicle.
- After the vehicle is created, the voucher becomes `redeemed` permanently.
- If item removal ever fails after successful redemption, the remaining item cannot be used again because its server-side token is already redeemed.

## Integrated BzZz Shop Locker V2 props (v1.3.0)

This build contains the required BzZz Shop Locker V2 streamed assets directly inside `nokey_storage/stream`, so a separate `bzzz_shop_locker` resource is not required.

The physical unit uses:

- Main shell: `bzzz_parcel_locker_a`
- Separate BzZz parcel door props attached using the offsets supplied with the pack
- `bzzz_parcel_locker_a.ytyp` loaded by the `nokey_storage` manifest

Start it as a single resource:

```cfg
ensure nokey_storage
```

The original BzZz readme/attribution is retained under `third_party/`. Keep the bundled paid assets within the licensed server/project and do not redistribute the original prop pack separately.

Each `Config.Locations` entry now supports:

```lua
{
    label = 'NoKey Storage - Example',
    coords = vec3(0.0, 0.0, 0.0), -- physical prop origin
    heading = 90.0,
    spawnProp = true,

    -- Optional: use a different interaction/server-validation point
    -- interactCoords = vec3(0.0, -0.5, 1.0),
}
```

If the locker is already baked into an MLO/map, set `spawnProp = false` so the script does not create a duplicate. The models are client-local and streamed only while a player is near the configured location.
