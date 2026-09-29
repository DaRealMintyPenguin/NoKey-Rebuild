-- Add this entry INSIDE the table returned by ox_inventory/data/items.lua.
-- Keep the resource folder named "nokey_storage", or update the client export below.

['vehicle_comp'] = {
    label = 'Vehicle Compensation',
    weight = 0,
    stack = false,
    close = true,
    consume = 0,
    description = 'A NoKey RP vehicle compensation voucher.',
    client = {
        image = 'vehicle_comp.png',
        export = 'nokey_storage.useVehicleComp'
    }
},
