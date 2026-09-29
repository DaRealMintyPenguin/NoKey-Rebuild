Config = {}

Config.AdminPrincipal = 'group.admin'
Config.AdminPermission = 'admin'

Config.Blip = {
    enabled = true,
    label = 'NoKey Storage', 
    sprite = 478,
    colour = 3,
    scale = 0.7,
    shortRange = true,
    display = 4,
}

Config.Prop = {
    enabled = true,
    model = 'bzzz_parcel_locker_a',
    includeDoors = true,
    streamDistance = 90.0,
    groundSnap = true,
}

Config.Locations = {
    {
        label = 'NoKey Storage - Legion',
        coords = vec3(250.34, -791.55, 29.4),
        heading = 249.50,
        spawnProp = true,
    },
    {
        label = 'NoKey Storage - Snr. Buns',
        coords = vec3(-501.02, -684.04, 32.21),
        heading = 91.61,
        spawnProp = true,
    },
}

Config.InteractDistance = 2.2
Config.ServerAccessDistance = 5.0
Config.DrawDistance = 15.0
Config.DrawMarker = false
Config.Marker = {
    type = 2,
    scale = vec3(0.25, 0.25, 0.25),
    colour = { r = 0, g = 235, b = 255, a = 180 }
}

Config.AuthorizationSeconds = 30

Config.Pin = {
    minLength = 4,
    maxLength = 8,
    maxAttempts = 150,
    attemptWindowSeconds = 30,
    lockoutSeconds = 60,
}

Config.Box = {
    minNumberLength = 1,
    maxNumberLength = 4,
    defaultSlots = 100,
    minSlots = 10,
    maxSlots = 200,
    defaultWeightKg = 2000,
    minWeightKg = 10,
    maxWeightKg = 5000,
}

Config.VehicleComp = {
    item = 'vehicle_comp',

    garages = {
        car = 'Legion Square',
        air = 'Hangar',
        sea = 'Boats',
    },


    typeOverrides = {

    },


    validateGarage = true,


    useDealershipVehicleCategories = true,

    platePrefix = 'NK',
}
