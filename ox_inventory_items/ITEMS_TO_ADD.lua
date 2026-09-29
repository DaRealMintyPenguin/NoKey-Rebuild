-- Collected item definitions for Qbox + ox_inventory.
-- Merge entries INSIDE your existing items table; do not replace a full inventory item list.
-- Conflicting item names are excluded here: see ITEM_CONFLICTS.md.
return {

    -- Resource: nokey_storage
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

    -- Resource: pug-businesscreator
    ['businesstablet'] = {
        label = 'Business Tablet',
        weight = 100,
        stack = true,
        close = true,
        description = 'A tablet used to manage your business'
    },

    -- Resource: pug-businesscreator
    ['sugar'] = {
    	label = 'sugar',
    	weight = 400,
    	stack = true,
    	close = true,
    	description = 'sugar'
    },

    -- Resource: pug-businesscreator
    ['butter'] = {
    	label = 'butter',
    	weight = 400,
    	stack = true,
    	close = true,
    	description = 'butter'
    },

    -- Resource: pug-businesscreator
    ['eggs'] = {
    	label = 'eggs',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'eggs'
    },

    -- Resource: pug-businesscreator
    ['bakingsoda'] = {
    	label = 'bakingsoda',
    	weight = 200,
    	stack = true,
    	close = true,
    	description = 'bakingsoda'
    },

    -- Resource: pug-businesscreator
    ['breadslice'] = {
    	label = 'breadslice',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'breadslice'
    },

    -- Resource: pug-businesscreator
    ['bread'] = {
    	label = 'bread loaf',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'bread'
    },

    -- Resource: pug-businesscreator
    ['fruit_mix'] = {
    	label = 'fruit mix',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'fruit mix'
    },

    -- Resource: pug-businesscreator
    ['citrus_extract'] = {
    	label = 'citrus extract',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'citrus extract'
    },

    -- Resource: pug-businesscreator
    ['tropical_mix'] = {
    	label = 'tropical mix',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'tropical mix'
    },

    -- Resource: pug-businesscreator
    ['spice_mix'] = {
    	label = 'spice mix',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'spice mix'
    },

    -- Resource: pug-businesscreator
    ['herbal_extract'] = {
    	label = 'herbal extract',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'herbal extract'
    },

    -- Resource: pug-businesscreator
    ['juice_concentrate'] = {
    	label = 'juice concentrate',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'juice concentrate'
    },

    -- Resource: pug-businesscreator
    ['soda_concentrate'] = {
    	label = 'soda concentrate',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'soda concentrate'
    },

    -- Resource: pug-businesscreator
    ['energy_concentrate'] = {
    	label = 'energy concentrate',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'energy concentrate'
    },

    -- Resource: pug-businesscreator
    ['caffeine'] = {
    	label = 'caffeine',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'caffeine'
    },

    -- Resource: pug-businesscreator
    ['vitamin_mix'] = {
    	label = 'vitamin mix',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'vitamin_mix'
    },

    -- Resource: pug-businesscreator
    ['soup_broth'] = {
    	label = 'soup broth',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'soup_broth'
    },

    -- Resource: pug-businesscreator
    ['rice'] = {
    	label = 'rice',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'rice'
    },

    -- Resource: pug-businesscreator
    ['noodles'] = {
    	label = 'noodles',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'noodles'
    },

    -- Resource: pug-businesscreator
    ['tortilla'] = {
    	label = 'tortilla',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'tortilla'
    },

    -- Resource: pug-businesscreator
    ['cream'] = {
    	label = 'cream',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'cream'
    },

    -- Resource: pug-businesscreator
    ['pickles'] = {
    	label = 'pickles',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'pickles'
    },

    -- Resource: pug-businesscreator
    ['lemon'] = {
    	label = 'lemon',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'lemon'
    },

    -- Resource: pug-businesscreator
    ['lime'] = {
    	label = 'lime',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'lime'
    },

    -- Resource: pug-businesscreator
    ['cheese'] = {
    	label = 'cheese',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'cheese'
    },

    -- Resource: pug-businesscreator
    ['beans'] = {
    	label = 'beans',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'beans'
    },

    -- Resource: pug-businesscreator
    ['peanuts'] = {
    	label = 'peanuts',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'peanuts'
    },

    -- Resource: pug-businesscreator
    ['chocolate'] = {
    	label = 'chocolate',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'chocolate'
    },

    -- Resource: pug-businesscreator
    ['lettuce'] = {
    	label = 'Lettuce',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'A fresh head of lettuce'
    },

    -- Resource: pug-businesscreator
    ['tomato'] = {
    	label = 'Tomato',
    	weight = 200,
    	stack = true,
    	close = true,
    	description = 'A fresh tomato'
    },

    -- Resource: pug-businesscreator
    ['onion'] = {
    	label = 'Onion',
    	weight = 150,
    	stack = true,
    	close = true,
    	description = 'A fresh onion'
    },

    -- Resource: pug-businesscreator
    ['garlic'] = {
    	label = 'Garlic',
    	weight = 50,
    	stack = true,
    	close = true,
    	description = 'A bulb of garlic'
    },

    -- Resource: pug-businesscreator
    ['potato'] = {
    	label = 'Potato',
    	weight = 300,
    	stack = true,
    	close = true,
    	description = 'A fresh potato'
    },

    -- Resource: pug-businesscreator
    ['carrot'] = {
    	label = 'Carrot',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'A fresh carrot'
    },

    -- Resource: pug-businesscreator
    ['cucumber'] = {
    	label = 'Cucumber',
    	weight = 150,
    	stack = true,
    	close = true,
    	description = 'A fresh cucumber'
    },

    -- Resource: pug-businesscreator
    ['peppers'] = {
    	label = 'Peppers',
    	weight = 100,
    	stack = true,
    	close = true,
    	description = 'A bunch of fresh peppers'
    },

    -- Resource: pug-businesscreator
    ['wheat'] = {
    	label = 'Wheat',
    	weight = 200,
    	stack = true,
    	close = true,
    	description = 'A bundle of wheat'
    },

    -- Resource: pug-businesscreator
    ['corn'] = {
    	label = 'Corn',
    	weight = 250,
    	stack = true,
    	close = true,
    	description = 'A fresh ear of corn'
    },

    -- Resource: pug-businesscreator
    ['milk_bottle'] = {
    	label = 'Milk Bottle',
    	weight = 100,
    	stack = true,
    	close = false,
    	description = 'A bottle of fresh milk.'
    },

    -- Resource: wasabi_police
    ['handcuffs'] = {
    			label = 'Hand Cuffs',
    			weight = 2,
    			stack = true,
    			close = true,
    		},

    -- Resource: wasabi_police
    ['bobby_pin'] = {
    			label = 'Bobby Pin',
    			weight = 2,
    			stack = true,
    			close = true,
    		},

    -- Resource: wasabi_police
    ['tracking_bracelet'] = {
    			label = 'Tracking Bracelet',
    			weight = 2,
    			stack = true,
    			close = true,
    		},

    -- Resource: jg-mechanic
    ["engine_oil"] = {
        label = "Engine Oil",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["tyre_replacement"] = {
        label = "Tyre Replacement",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["clutch_replacement"] = {
        label = "Clutch Replacement",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["air_filter"] = {
        label = "Air Filter",
        weight = 100,
      },

    -- Resource: jg-mechanic
    ["spark_plug"] = {
        label = "Spark Plug",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["brakepad_replacement"] = {
        label = "Brakepad Replacement",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["suspension_parts"] = {
        label = "Suspension Parts",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["i4_engine"] = {
        label = "I4 Engine",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["v6_engine"] = {
        label = "V6 Engine",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["v8_engine"] = {
        label = "V8 Engine",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["v12_engine"] = {
        label = "V12 Engine",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["turbocharger"] = {
        label = "Turbocharger",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["ev_motor"] = {
        label = "EV Motor",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["ev_battery"] = {
        label = "EV Battery",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["ev_coolant"] = {
        label = "EV Coolant",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["awd_drivetrain"] = {
        label = "AWD Drivetrain",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["rwd_drivetrain"] = {
        label = "RWD Drivetrain",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["fwd_drivetrain"] = {
        label = "FWD Drivetrain",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["slick_tyres"] = {
        label = "Slick Tyres",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["semi_slick_tyres"] = {
        label = "Semi Slick Tyres",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["offroad_tyres"] = {
        label = "Offroad Tyres",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["drift_tuning_kit"] = {
        label = "Drift Tuning Kit",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["ceramic_brakes"] = {
        label = "Ceramic Brakes",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["lighting_controller"] = {
        label = "Lighting Controller",
        weight = 100,
        client = {
          event = "jg-mechanic:client:show-lighting-controller",
        }
      },

    -- Resource: jg-mechanic
    ["stancing_kit"] = {
        label = "Stancer Kit",
        weight = 100,
        client = {
          event = "jg-mechanic:client:show-stancer-kit",
        }
      },

    -- Resource: jg-mechanic
    ["cosmetic_part"] = {
        label = "Cosmetic Parts",
        weight = 100,
      },

    -- Resource: jg-mechanic
    ["respray_kit"] = {
        label = "Respray Kit",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["vehicle_wheels"] = {
        label = "Vehicle Wheels Set",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["tyre_smoke_kit"] = {
        label = "Tyre Smoke Kit",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["bulletproof_tyres"] = {
        label = "Bulletproof Tyres",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["extras_kit"] = {
        label = "Extras Kit",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["nitrous_bottle"] = {
        label = "Nitrous Bottle",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:use-nitrous-bottle",
        }
      },

    -- Resource: jg-mechanic
    ["empty_nitrous_bottle"] = {
        label = "Empty Nitrous Bottle",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["nitrous_install_kit"] = {
        label = "Nitrous Install Kit",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["cleaning_kit"] = {
        label = "Cleaning Kit",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:clean-vehicle",
        }
      },

    -- Resource: jg-mechanic
    ["repair_kit"] = {
        label = "Repair Kit",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:repair-vehicle",
        }
      },

    -- Resource: jg-mechanic
    ["duct_tape"] = {
        label = "Duct Tape",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:use-duct-tape",
        }
      },

    -- Resource: jg-mechanic
    ["performance_part"] = {
        label = "Performance Parts",
        weight = 1000,
      },

    -- Resource: jg-mechanic
    ["mechanic_tablet"] = {
        label = "Mechanic Tablet",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:use-tablet",
        }
      },

    -- Resource: jg-mechanic
    ["manual_gearbox"] = {
        label = "Manual Gearbox",
        weight = 1000,
      },

    -- Resource: jim_g_trading_cards
    ['card_sleeves'] = {                      label = 'Card Sleeves',      weight = 1,    stack = true,     close = true,    description = 'Protects cards from condition loss when showing/trading',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_star_galaxy'] = {             label = 'CVG Label - Star Galaxy', weight = 1, stack = true, close = true, description = 'Applies a Star Galaxy label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_color_shift'] = {             label = 'CVG Label - Color Shift', weight = 1, stack = true, close = true, description = 'Applies a Color Shift label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_p_and_b_mix'] = {             label = 'CVG Label - P & B Mix', weight = 1, stack = true, close = true, description = 'Applies a P & B Mix label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_mellow_sky'] = {             label = 'CVG Label - Mellow Sky', weight = 1, stack = true, close = true, description = 'Applies a Mellow Sky label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_aetheric_sigil'] = {          label = 'CVG Label - Aetheric Sigil', weight = 1, stack = true, close = true, description = 'Applies an Aetheric Sigil label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_arcane_circle'] = {           label = 'CVG Label - Arcane Circle', weight = 1, stack = true, close = true, description = 'Applies an Arcane Circle label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_astral_dragon'] = {           label = 'CVG Label - Astral Dragon', weight = 1, stack = true, close = true, description = 'Applies an Astral Dragon label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_celestial_gear'] = {          label = 'CVG Label - Celestial Gear', weight = 1, stack = true, close = true, description = 'Applies a Celestial Gear label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_cosmic_phoenix'] = {          label = 'CVG Label - Cosmic Phoenix', weight = 1, stack = true, close = true, description = 'Applies a Cosmic Phoenix label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_elemental_fusion'] = {        label = 'CVG Label - Elemental Fusion', weight = 1, stack = true, close = true, description = 'Applies an Elemental Fusion label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_glacial_inferno'] = {         label = 'CVG Label - Glacial Inferno', weight = 1, stack = true, close = true, description = 'Applies a Glacial Inferno label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_golden_valley'] = {           label = 'CVG Label - Golden Valley', weight = 1, stack = true, close = true, description = 'Applies a Golden Valley label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_katana_street'] = {           label = 'CVG Label - Katana Street', weight = 1, stack = true, close = true, description = 'Applies a Katana Street label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_mecha_hangar'] = {            label = 'CVG Label - Mecha Hangar', weight = 1, stack = true, close = true, description = 'Applies a Mecha Hangar label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_nebula_drift'] = {            label = 'CVG Label - Nebula Drift', weight = 1, stack = true, close = true, description = 'Applies a Nebula Drift label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_nebula_fox'] = {              label = 'CVG Label - Nebula Fox', weight = 1, stack = true, close = true, description = 'Applies a Nebula Fox label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_sage_alignment'] = {          label = 'CVG Label - Sage Alignment', weight = 1, stack = true, close = true, description = 'Applies a Sage Alignment label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_solaris_runes'] = {           label = 'CVG Label - Solaris Runes', weight = 1, stack = true, close = true, description = 'Applies a Solaris Runes label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['cvg_label_winter_shrine'] = {           label = 'CVG Label - Winter Shrine', weight = 1, stack = true, close = true, description = 'Applies a Winter Shrine label to a CVG slab',},

    -- Resource: jim_g_trading_cards
    ['empty_grading_case'] = {                    label = 'empty grading case', weight = 20, stack = true, close = true, description = 'Empty CVG-style case that stores a graded card',},

    -- Resource: jim_g_trading_cards
    ['grading_case'] = {                          label = 'Grading Case',      weight = 20,   stack = false,    close = true,    description = 'CVG-style case that stores a graded card',},

    -- Resource: jim_g_trading_cards
    ['cvg_binder'] = {                          label = 'CVG Binder',      weight = 20,   stack = false,    close = true,    description = 'CVG binder that stores graded slabs',},

    -- Resource: jim_g_trading_cards
    ['cvg_case_splitter'] = {                  label = 'CVG Case Splitter', weight = 10, stack = true, close = true, description = 'Splits open a CVG slab and returns the card',},

    -- Resource: jim_g_trading_cards
    ['jg_warlords_pack'] = {                      label = 'JG Warlords Booster Pack', weight = 10, stack = true, close = true, description = 'Opens to reveal 6 random cards',},

    -- Resource: jim_g_trading_cards
    ['jg_warlords_pack_mythic'] = {               label = 'JG Warlords Mythic Booster Pack', weight = 10, stack = true, close = true, description = 'Mythic booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_warlords_pack_legendary'] = {            label = 'JG Warlords Legendary Booster Pack', weight = 10, stack = true, close = true, description = 'Legendary booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_warlords_booster_box'] = {               label = 'JG Warlords Booster Box', weight = 10, stack = true, close = true, description = 'JG Warlords booster box with 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_warlords_booster_box_mythic'] = {        label = 'JG Warlords Mythic Booster Box', weight = 10, stack = true, close = true, description = 'JG Warlords Mythic booster box with Mythic 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_warlords_booster_box_legendary'] = {     label = 'JG Warlords Legendary Booster Box', weight = 10, stack = true, close = true, description = 'JG Warlords Legendary booster box with Legendary 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_warlords_book'] = {                      label = 'trading card book', weight = 10,   stack = false,    close = true,    description = 'Opens to reveal 6 random cards',},

    -- Resource: jim_g_trading_cards
    ['jg_void_ether_pack'] = {                    label = 'JG Void Ether Booster Pack', weight = 10, stack = true, close = true, description = 'JG Void Ether booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_void_ether_pack_mythic'] = {             label = 'JG Void Ether Mythic Booster Pack', weight = 10, stack = true, close = true, description = 'JG Void Ether Mythic booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_void_ether_pack_legendary'] = {          label = 'JG Void Ether Legendary Booster Pack', weight = 10, stack = true, close = true, description = 'JG Void Ether Legendary booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_void_ether_booster_box'] = {             label = 'JG Void Ether Booster Box', weight = 10, stack = true, close = true, description = 'JG Void Ether booster box with 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_void_ether_booster_box_mythic'] = {      label = 'JG Void Ether Mythic Booster Box', weight = 10, stack = true, close = true, description = 'JG Void Ether Mythic booster box with Mythic 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_void_ether_booster_box_legendary'] = {   label = 'JG Void Ether Legendary Booster Box', weight = 10, stack = true, close = true, description = 'JG Void Ether Legendary booster box with Legendary 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_void_ether_book'] = {                    label = 'JG Void Ether trading card book', weight = 10, stack = false, close = true, description = 'Opens to reveal 6 random cards',},

    -- Resource: jim_g_trading_cards
    ['jg_shin_genesis_pack'] = {                  label = 'JG Shin Genesis Booster Pack', weight = 10, stack = true, close = true, description = 'Opens to reveal 6 random cards',},

    -- Resource: jim_g_trading_cards
    ['jg_shin_genesis_pack_mythic'] = {           label = 'JG Shin Genesis Mythic Booster Pack', weight = 10, stack = true, close = true, description = 'Mythic booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_shin_genesis_pack_legendary'] = {        label = 'JG Shin Genesis Legendary Booster Pack', weight = 10, stack = true, close = true, description = 'legendary booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_shin_genesis_booster_box'] = {           label = 'JG Shin Genesis Booster Box', weight = 10, stack = true, close = true, description = 'JG Shin Genesis booster box with 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_shin_genesis_booster_box_mythic'] = {    label = 'JG Shin Genesis Mythic Booster Box', weight = 10, stack = true, close = true, description = 'JG Shin Genesis booster box with 6 mythic packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_shin_genesis_booster_box_legendary'] = { label = 'JG Shin Genesis Legendary Booster Box', weight = 10, stack = true, close = true, description = 'JG Shin Genesis booster box with 6 legendary packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_shin_genesis_book'] = {                  label = 'JG Shin Genesis trading card book', weight = 10, stack = false, close = true, description = 'Open to add your card to your collection.',},

    -- Resource: jim_g_trading_cards
    ['jg_sands_of_eternity_pack'] = {             label = 'JG Sands Of Eternity Booster Pack', weight = 10, stack = true, close = true, description = 'JG Sands Of Eternity booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_sands_of_eternity_pack_mythic'] = {      label = 'JG Sands Of Eternity Mythic Booster Pack', weight = 10, stack = true, close = true, description = 'JG Sands Of Eternity Mythic booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_sands_of_eternity_pack_legendary'] = {   label = 'JG Sands Of Eternity Legendary Booster Pack', weight = 10, stack = true, close = true, description = 'JG Sands Of Eternity Legendary booster pack, reveals 6 cards',},

    -- Resource: jim_g_trading_cards
    ['jg_sands_of_eternity_booster_box'] = {      label = 'JG Sands Of Eternity Booster Box', weight = 10, stack = true, close = true, description = 'JG Sands Of Eternity booster box with 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_sands_of_eternity_booster_box_mythic'] = { label = 'JG Sands Of Eternity Mythic Booster Box', weight = 10, stack = true, close = true, description = 'JG Sands Of Eternity Mythic booster box with Mythic 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_sands_of_eternity_booster_box_legendary'] = { label = 'JG Sands Of Eternity Legendary Booster Box', weight = 10, stack = true, close = true, description = 'JG Sands Of Eternity Legendary booster box with Legendary 6 packs.',},

    -- Resource: jim_g_trading_cards
    ['jg_sands_of_eternity_book'] = {             label = 'JG Sands Of Eternity trading card book', weight = 10, stack = false, close = true, description = 'Opens to reveal 6 random cards',},

    -- Resource: jim_g_trading_cards
    ['ammunation_elite_pack'] = {                 label = 'Ammunation Elite Booster Pack', weight = 10, stack = true, close = true, description = 'Ammunation Elite Booster Pack',},

    -- Resource: jim_g_trading_cards
    ['ammunation_elite_mythic_pack'] = {          label = 'Ammunation Elite Booster Pack Mythic', weight = 10, stack = true, close = true, description = 'Ammunation Elite Booster Pack Mythic',},

    -- Resource: jim_g_trading_cards
    ['ammunation_elite_legendary_pack'] = {       label = 'Ammunation Elite Booster Pack Legendary', weight = 10, stack = true, close = true, description = 'Ammunation Elite Booster Pack Legendary',},

    -- Resource: jim_g_trading_cards
    ['ammunation_elite_booster_box'] = {          label = 'Ammunation Elite Booster Box', weight = 10, stack = true, close = true, description = 'Ammunation Elite Booster Box',},

    -- Resource: jim_g_trading_cards
    ['ammunation_elite_booster_box_mythic'] = {   label = 'Ammunation Elite Booster Box Mythic', weight = 10, stack = true, close = true, description = 'Ammunation Elite Booster Box Mythic',},

    -- Resource: jim_g_trading_cards
    ['ammunation_elite_booster_box_legendary'] = { label = 'Ammunation Elite Booster Box Legendary', weight = 10, stack = true, close = true, description = 'Ammunation Elite Booster Box Legendary',},

    -- Resource: jim_g_trading_cards
    ['ammunation_elite_book'] = {                 label = 'Ammunation Elite Book', weight = 10,   stack = true,     close = true,    description = 'Ammunation Elite Book',},

    -- Resource: jim_g_trading_cards
    ['full_throttle_pack'] = {                    label = 'Full Throttle Booster Pack', weight = 10, stack = true, close = true, description = 'Full Throttle Booster Pack',},

    -- Resource: jim_g_trading_cards
    ['full_throttle_mythic_pack'] = {             label = 'Full Throttle Booster Pack Mythic', weight = 10, stack = true, close = true, description = 'Full Throttle Booster Pack Mythic',},

    -- Resource: jim_g_trading_cards
    ['full_throttle_legendary_pack'] = {          label = 'Full Throttle Booster Pack Legendary', weight = 10, stack = true, close = true, description = 'Full Throttle Booster Pack Legendary',},

    -- Resource: jim_g_trading_cards
    ['full_throttle_booster_box'] = {             label = 'Full Throttle Booster Box', weight = 10, stack = true, close = true, description = 'Full Throttle Booster Box',},

    -- Resource: jim_g_trading_cards
    ['full_throttle_booster_box_mythic'] = {      label = 'Full Throttle Booster Box Mythic', weight = 10, stack = true, close = true, description = 'Full Throttle Booster Box Mythic',},

    -- Resource: jim_g_trading_cards
    ['full_throttle_booster_box_legendary'] = {   label = 'Full Throttle Booster Box Legendary', weight = 10, stack = true, close = true, description = 'Full Throttle Booster Box Legendary',},

    -- Resource: jim_g_trading_cards
    ['full_throttle_book'] = {                    label = 'Full Throttle Book', weight = 10,    stack = true,     close = true,    description = 'Full Throttle Book',},

    -- Resource: jim_g_trading_cards
    ['ls_legends_pack'] = {                       label = 'LS Legends Booster Pack', weight = 10, stack = true, close = true, description = 'LS Legends Booster Pack',},

    -- Resource: jim_g_trading_cards
    ['ls_legends_mythic_pack'] = {                label = 'LS Legends Mythic Pack', weight = 10, stack = true, close = true, description = 'LS Legends Mythic Pack',},

    -- Resource: jim_g_trading_cards
    ['ls_legends_legendary_pack'] = {             label = 'LS Legends Legendary Pack', weight = 10, stack = true, close = true, description = 'LS Legends Legendary Pack',},

    -- Resource: jim_g_trading_cards
    ['ls_legends_booster_box'] = {                label = 'LS Legends Booster Box', weight = 10, stack = true, close = true, description = 'LS Legends Booster Box',},

    -- Resource: jim_g_trading_cards
    ['ls_legends_booster_box_mythic'] = {         label = 'LS Legends Booster Box Mythic', weight = 10, stack = true, close = true, description = 'LS Legends Booster Box Mythic',},

    -- Resource: jim_g_trading_cards
    ['ls_legends_booster_box_legendary'] = {      label = 'LS Legends Booster Box Legendary', weight = 10, stack = true, close = true, description = 'LS Legends Booster Box Legendary',},

    -- Resource: jim_g_trading_cards
    ['ls_legends_book'] = {                       label = 'LS Legends Book',  weight = 10,    stack = true,     close = true,    description = 'LS Legends Book',},

    -- Resource: jim_g_trading_cards
    ['ls_landmark_pack'] = {                      label = 'LS Landmark Booster Pack', weight = 10, stack = true, close = true, description = 'LS Landmark Booster Pack',},

    -- Resource: jim_g_trading_cards
    ['ls_landmark_mythic_pack'] = {               label = 'LS Landmark Mythic Pack', weight = 10, stack = true, close = true, description = 'LS Landmark Mythic Pack',},

    -- Resource: jim_g_trading_cards
    ['ls_landmark_legendary_pack'] = {            label = 'LS Landmark Legendary Pack', weight = 10, stack = true, close = true, description = 'LS Landmark Legendary Pack',},

    -- Resource: jim_g_trading_cards
    ['ls_landmark_booster_box'] = {               label = 'LS Landmark Booster Box', weight = 10, stack = true, close = true, description = 'LS Landmark Booster Box',},

    -- Resource: jim_g_trading_cards
    ['ls_landmark_booster_box_mythic'] = {        label = 'LS Landmark Booster Box Mythic', weight = 10, stack = true, close = true, description = 'LS Landmark Booster Box Mythic',},

    -- Resource: jim_g_trading_cards
    ['ls_landmark_booster_box_legendary'] = {     label = 'LS Landmark Booster Box Legendary', weight = 10, stack = true, close = true, description = 'LS Landmark Booster Box Legendary',},

    -- Resource: jim_g_trading_cards
    ['ls_landmark_book'] = {                      label = 'LS Landmark Book', weight = 10,    stack = true,     close = true,    description = 'LS Landmark Book',},

    -- Resource: jim_g_trading_cards
    ['card_aetherion'] = {         label = 'Aetherion',        weight = 10,    stack = false,    close = true,    description = 'Aetherion',},

    -- Resource: jim_g_trading_cards
    ['card_venom_burrower'] = {    label = 'Venom Burrower',   weight = 10,    stack = false,    close = true,    description = 'Venom Burrower',},

    -- Resource: jim_g_trading_cards
    ['card_dark_knight'] = {       label = 'Dark Knight',      weight = 10,    stack = false,    close = true,    description = 'Dark Knight',},

    -- Resource: jim_g_trading_cards
    ['card_toxic_hydra'] = {       label = 'Toxic Hydra',      weight = 10,    stack = false,    close = true,    description = 'Toxic Hydra',},

    -- Resource: jim_g_trading_cards
    ['card_gloom_dragon'] = {      label = 'Gloom Dragon',     weight = 10,    stack = false,    close = true,    description = 'Gloom Dragon',},

    -- Resource: jim_g_trading_cards
    ['card_steel_mauler'] = {      label = 'Steel Mauler',     weight = 10,    stack = false,    close = true,    description = 'Steel Mauler',},

    -- Resource: jim_g_trading_cards
    ['card_spirit_hornet'] = {     label = 'Spirit Hornet',    weight = 10,    stack = false,    close = true,    description = 'Spirit Hornet',},

    -- Resource: jim_g_trading_cards
    ['card_blight_harpy'] = {      label = 'Blight Harpy',     weight = 10,    stack = false,    close = true,    description = 'Blight Harpy',},

    -- Resource: jim_g_trading_cards
    ['card_thunder_gryphon'] = {   label = 'Thunder Gryphon',  weight = 10,    stack = false,    close = true,    description = 'Thunder Gryphon',},

    -- Resource: jim_g_trading_cards
    ['card_grimblight'] = {        label = 'Grimblight',       weight = 10,    stack = false,    close = true,    description = 'Grimblight',},

    -- Resource: jim_g_trading_cards
    ['card_plagueborn'] = {        label = 'Plagueborn',       weight = 10,    stack = false,    close = true,    description = 'Plagueborn',},

    -- Resource: jim_g_trading_cards
    ['card_soul_eater'] = {        label = 'Soul Eater',       weight = 10,    stack = false,    close = true,    description = 'Soul Eater',},

    -- Resource: jim_g_trading_cards
    ['card_frostclaw_ape'] = {     label = 'Frostclaw Ape',    weight = 10,    stack = false,    close = true,    description = 'Frostclaw Ape',},

    -- Resource: jim_g_trading_cards
    ['card_blazehoof'] = {         label = 'Blazehoof',        weight = 10,    stack = false,    close = true,    description = 'Blazehoof',},

    -- Resource: jim_g_trading_cards
    ['card_ashwalker'] = {         label = 'Ashwalker',        weight = 10,    stack = false,    close = true,    description = 'Ashwalker',},

    -- Resource: jim_g_trading_cards
    ['card_thunder_serpent'] = {   label = 'Thunder Serpent',  weight = 10,    stack = false,    close = true,    description = 'Thunder Serpent',},

    -- Resource: jim_g_trading_cards
    ['card_lightning_mantis'] = {  label = 'Lightning Mantis', weight = 10,    stack = false,    close = true,    description = 'Lightning Mantis',},

    -- Resource: jim_g_trading_cards
    ['card_quake_bison'] = {       label = 'Quake Bison',      weight = 10,    stack = false,    close = true,    description = 'Quake Bison',},

    -- Resource: jim_g_trading_cards
    ['card_earthshaker'] = {       label = 'Earthshaker',      weight = 10,    stack = false,    close = true,    description = 'Earthshaker',},

    -- Resource: jim_g_trading_cards
    ['card_ancient_one'] = {       label = 'Ancient One',      weight = 10,    stack = false,    close = true,    description = 'Ancient One',},

    -- Resource: jim_g_trading_cards
    ['card_arcane_wolf'] = {       label = 'Arcane Wolf',      weight = 10,    stack = false,    close = true,    description = 'Arcane Wolf',},

    -- Resource: jim_g_trading_cards
    ['card_dreadeye'] = {          label = 'Dreadeye',         weight = 10,    stack = false,    close = true,    description = 'Dreadeye',},

    -- Resource: jim_g_trading_cards
    ['card_voidborn'] = {          label = 'Voidborn',         weight = 10,    stack = false,    close = true,    description = 'Voidborn',},

    -- Resource: jim_g_trading_cards
    ['card_sand_ravager'] = {      label = 'Sand Ravager',     weight = 10,    stack = false,    close = true,    description = 'Sand Ravager',},

    -- Resource: jim_g_trading_cards
    ['card_phantom_sentry'] = {    label = 'Phantom Sentry',   weight = 10,    stack = false,    close = true,    description = 'Phantom Sentry',},

    -- Resource: jim_g_trading_cards
    ['card_soul_ripper'] = {       label = 'Soul Ripper',      weight = 10,    stack = false,    close = true,    description = 'Soul Ripper',},

    -- Resource: jim_g_trading_cards
    ['card_fire_kraken'] = {       label = 'Fire Kraken',      weight = 10,    stack = false,    close = true,    description = 'Fire Kraken',},

    -- Resource: jim_g_trading_cards
    ['card_granite_behemoth'] = {  label = 'Granite Behemoth', weight = 10,    stack = false,    close = true,    description = 'Granite Behemoth',},

    -- Resource: jim_g_trading_cards
    ['card_molten_reaper'] = {     label = 'Molten Reaper',    weight = 10,    stack = false,    close = true,    description = 'Molten Reaper',},

    -- Resource: jim_g_trading_cards
    ['card_night_howler'] = {      label = 'Night Howler',     weight = 10,    stack = false,    close = true,    description = 'Night Howler',},

    -- Resource: jim_g_trading_cards
    ['card_abyss_crawler'] = {     label = 'Abyss Crawler',    weight = 10,    stack = false,    close = true,    description = 'Abyss Crawler',},

    -- Resource: jim_g_trading_cards
    ['card_stormling_beast'] = {   label = 'Stormling Beast',  weight = 10,    stack = false,    close = true,    description = 'Stormling Beast',},

    -- Resource: jim_g_trading_cards
    ['card_dread_warden'] = {      label = 'Dread Warden',     weight = 10,    stack = false,    close = true,    description = 'Dread Warden',},

    -- Resource: jim_g_trading_cards
    ['card_storm_brute'] = {       label = 'Storm Brute',      weight = 10,    stack = false,    close = true,    description = 'Storm Brute',},

    -- Resource: jim_g_trading_cards
    ['card_storm_spirit'] = {      label = 'Storm Spirit',     weight = 10,    stack = false,    close = true,    description = 'Storm Spirit',},

    -- Resource: jim_g_trading_cards
    ['card_mist_leviathan'] = {    label = 'Mist Leviathan',   weight = 10,    stack = false,    close = true,    description = 'Mist Leviathan',},

    -- Resource: jim_g_trading_cards
    ['card_frost_golem'] = {       label = 'Frost Golem',      weight = 10,    stack = false,    close = true,    description = 'Frost Golem',},

    -- Resource: jim_g_trading_cards
    ['card_ash_hollow'] = {        label = 'Ash Hollow',       weight = 10,    stack = false,    close = true,    description = 'Ash Hollow',},

    -- Resource: jim_g_trading_cards
    ['card_iron_fang'] = {         label = 'Iron Fang',        weight = 10,    stack = false,    close = true,    description = 'Iron Fang',},

    -- Resource: jim_g_trading_cards
    ['card_shadow_marauder'] = {   label = 'Shadow Marauder',  weight = 10,    stack = false,    close = true,    description = 'Shadow Marauder',},

    -- Resource: jim_g_trading_cards
    ['card_void_revenant'] = {     label = 'Void Revenant',    weight = 10,    stack = false,    close = true,    description = 'Void Revenant',},

    -- Resource: jim_g_trading_cards
    ['card_cloud_watcher'] = {     label = 'Cloud Watcher',    weight = 10,    stack = false,    close = true,    description = 'Cloud Watcher',},

    -- Resource: jim_g_trading_cards
    ['card_ember_ogre'] = {        label = 'Ember Ogre',       weight = 10,    stack = false,    close = true,    description = 'Ember Ogre',},

    -- Resource: jim_g_trading_cards
    ['card_echo_shade'] = {        label = 'Echo Shade',       weight = 10,    stack = false,    close = true,    description = 'Echo Shade',},

    -- Resource: jim_g_trading_cards
    ['card_crystal_titan'] = {     label = 'Crystal Titan',    weight = 10,    stack = false,    close = true,    description = 'Crystal Titan',},

    -- Resource: jim_g_trading_cards
    ['card_chaos_spawn'] = {       label = 'Chaos Spawn',      weight = 10,    stack = false,    close = true,    description = 'Chaos Spawn',},

    -- Resource: jim_g_trading_cards
    ['card_chaos_gorgon'] = {      label = 'Chaos Gorgon',     weight = 10,    stack = false,    close = true,    description = 'Chaos Gorgon',},

    -- Resource: jim_g_trading_cards
    ['card_blood_talon'] = {       label = 'Blood Talon',      weight = 10,    stack = false,    close = true,    description = 'Blood Talon',},

    -- Resource: jim_g_trading_cards
    ['card_lunar_specter'] = {     label = 'Lunar Specter',    weight = 10,    stack = false,    close = true,    description = 'Lunar Specter',},

    -- Resource: jim_g_trading_cards
    ['card_dread_basilisk'] = {    label = 'Dread Basilisk',   weight = 10,    stack = false,    close = true,    description = 'Dread Basilisk',},

    -- Resource: jim_g_trading_cards
    ['card_venom_hunter'] = {      label = 'Venom Hunter',     weight = 10,    stack = false,    close = true,    description = 'Venom Hunter',},

    -- Resource: jim_g_trading_cards
    ['card_void_stalker'] = {      label = 'Void Stalker',     weight = 10,    stack = false,    close = true,    description = 'Void Stalker',},

    -- Resource: jim_g_trading_cards
    ['card_ember_wraith'] = {      label = 'Ember Wraith',     weight = 10,    stack = false,    close = true,    description = 'Ember Wraith',},

    -- Resource: jim_g_trading_cards
    ['card_wind_phantom'] = {      label = 'Wind Phantom',     weight = 10,    stack = false,    close = true,    description = 'Wind Phantom',},

    -- Resource: jim_g_trading_cards
    ['card_bone_colossus'] = {     label = 'Bone Colossus',    weight = 10,    stack = false,    close = true,    description = 'Bone Colossus',},

    -- Resource: jim_g_trading_cards
    ['card_flame_beast'] = {       label = 'Flame Beast',      weight = 10,    stack = false,    close = true,    description = 'Flame Beast',},

    -- Resource: jim_g_trading_cards
    ['card_valtherix'] = {         label = 'Valtherix',        weight = 10,    stack = false,    close = true,    description = 'A rare and powerful',},

    -- Resource: jim_g_trading_cards
    ['card_eldrephon'] = {         label = 'eldrephon',        weight = 10,    stack = false,    close = true,    description = 'An electric-type',},

    -- Resource: jim_g_trading_cards
    ['card_rootstride'] = {        label = 'rootstride',       weight = 10,    stack = false,    close = true,    description = 'A normal-type',},

    -- Resource: jim_g_trading_cards
    ['card_tektorrath'] = {        label = 'tektorrath',       weight = 10,    stack = false,    close = true,    description = 'A legendary psychic-type',},

    -- Resource: jim_g_trading_cards
    ['card_aetheron'] = {          label = 'Aetheron',         weight = 10,    stack = false,    close = true,    description = 'Mystic-wisp creature attuned to ether winds',},

    -- Resource: jim_g_trading_cards
    ['card_boltstride'] = {        label = 'Boltstride',       weight = 10,    stack = false,    close = true,    description = 'Swift skirmisher crackling with storm energy',},

    -- Resource: jim_g_trading_cards
    ['card_chronospecter'] = {     label = 'Chronospecter',    weight = 10,    stack = false,    close = true,    description = 'Phantom that bends time echoes',},

    -- Resource: jim_g_trading_cards
    ['card_cinderfang'] = {        label = 'Cinderfang',       weight = 10,    stack = false,    close = true,    description = 'Ash-born predator with ember talons',},

    -- Resource: jim_g_trading_cards
    ['card_crystalfrost'] = {      label = 'Crystalfrost',     weight = 10,    stack = false,    close = true,    description = 'Shards of winter focused into a sentinel',},

    -- Resource: jim_g_trading_cards
    ['card_hydrusk'] = {           label = 'Hydrusk',          weight = 10,    stack = false,    close = true,    description = 'Aquatic brute that cleaves tides',},

    -- Resource: jim_g_trading_cards
    ['card_ironclad_leviathan'] = {label = 'Ironclad Leviathan', weight = 10,   stack = false,    close = true,    description = 'Ocean colossus plated in steel',},

    -- Resource: jim_g_trading_cards
    ['card_mirthful_mimic'] = {    label = 'Mirthful Mimic',   weight = 10,    stack = false,    close = true,    description = 'Illusory trickster with cheerful guise',},

    -- Resource: jim_g_trading_cards
    ['card_shroomancer'] = {       label = 'Shroomancer',      weight = 10,    stack = false,    close = true,    description = 'Spore mage weaving fungal rites',},

    -- Resource: jim_g_trading_cards
    ['card_stormcoil'] = {         label = 'Stormcoil',        weight = 10,    stack = false,    close = true,    description = 'Thunder serpent coiling tempests',},

    -- Resource: jim_g_trading_cards
    ['card_sunscorch'] = {         label = 'Sunscorch',        weight = 10,    stack = false,    close = true,    description = 'Radiant predator with solar flare',},

    -- Resource: jim_g_trading_cards
    ['card_tanglevine'] = {        label = 'Tanglevine',       weight = 10,    stack = false,    close = true,    description = 'Vinebound guardian of wild groves',},

    -- Resource: jim_g_trading_cards
    ['card_terraklaw'] = {         label = 'Terraklaw',        weight = 10,    stack = false,    close = true,    description = 'Earth raptor forged by faultlines',},

    -- Resource: jim_g_trading_cards
    ['card_whisperwing'] = {       label = 'Whisperwing',      weight = 10,    stack = false,    close = true,    description = 'Silent courier of night breezes',},

    -- Resource: jim_g_trading_cards
    ['card_grizzlethorn'] = {      label = 'Grizzlethorn',     weight = 10,    stack = false,    close = true,    description = 'Grizzlethorn',},

    -- Resource: jim_g_trading_cards
    ['card_hollowmane'] = {        label = 'Hollowmane',       weight = 10,    stack = false,    close = true,    description = 'Hollowmane',},

    -- Resource: jim_g_trading_cards
    ['card_iron_warlock'] = {      label = 'Iron Warlock',     weight = 10,    stack = false,    close = true,    description = 'Iron Warlock',},

    -- Resource: jim_g_trading_cards
    ['card_glintfang'] = {         label = 'Glintfang',        weight = 10,    stack = false,    close = true,    description = 'Glintfang',},

    -- Resource: jim_g_trading_cards
    ['card_razorbloom'] = {        label = 'Razorbloom',       weight = 10,    stack = false,    close = true,    description = 'Razorbloom',},

    -- Resource: jim_g_trading_cards
    ['card_whisperling'] = {       label = 'Whisperling',      weight = 10,    stack = false,    close = true,    description = 'Whisperling',},

    -- Resource: jim_g_trading_cards
    ['card_moltencore'] = {        label = 'Moltencore',       weight = 10,    stack = false,    close = true,    description = 'Moltencore',},

    -- Resource: jim_g_trading_cards
    ['card_spectrix'] = {          label = 'Spectrix',         weight = 10,    stack = false,    close = true,    description = 'Spectrix',},

    -- Resource: jim_g_trading_cards
    ['card_lumigore'] = {          label = 'Lumigore',         weight = 10,    stack = false,    close = true,    description = 'Lumigore',},

    -- Resource: jim_g_trading_cards
    ['card_brackenshade'] = {      label = 'Brackenshade',     weight = 10,    stack = false,    close = true,    description = 'Brackenshade',},

    -- Resource: jim_g_trading_cards
    ['card_quillfin'] = {          label = 'Quillfin',         weight = 10,    stack = false,    close = true,    description = 'Quillfin',},

    -- Resource: jim_g_trading_cards
    ['card_thornax'] = {           label = 'Thornax',          weight = 10,    stack = false,    close = true,    description = 'Thornax',},

    -- Resource: jim_g_trading_cards
    ['card_nimbra'] = {            label = 'Nimbra',           weight = 10,    stack = false,    close = true,    description = 'Nimbra',},

    -- Resource: jim_g_trading_cards
    ['card_bone_collector'] = {    label = 'Bone Collector',   weight = 10,    stack = false,    close = true,    description = 'Bone Collector',},

    -- Resource: jim_g_trading_cards
    ['card_vexwing'] = {           label = 'Vexwing',          weight = 10,    stack = false,    close = true,    description = 'Vexwing',},

    -- Resource: jim_g_trading_cards
    ['card_crystide'] = {          label = 'Crystide',         weight = 10,    stack = false,    close = true,    description = 'Crystide',},

    -- Resource: jim_g_trading_cards
    ['card_fire_demon'] = {        label = 'Fire Demon',       weight = 10,    stack = false,    close = true,    description = 'Fire Demon',},

    -- Resource: jim_g_trading_cards
    ['card_void_walker'] = {       label = 'Void Walker',      weight = 10,    stack = false,    close = true,    description = 'Void Walker',},

    -- Resource: jim_g_trading_cards
    ['card_toxic_spitter'] = {     label = 'Toxic Spitter',    weight = 10,    stack = false,    close = true,    description = 'Toxic Spitter',},

    -- Resource: jim_g_trading_cards
    ['card_murklash'] = {          label = 'Murklash',         weight = 10,    stack = false,    close = true,    description = 'Murklash',},

    -- Resource: jim_g_trading_cards
    ['card_cursed_knight'] = {     label = 'Cursed Knight',    weight = 10,    stack = false,    close = true,    description = 'Cursed Knight',},

    -- Resource: jim_g_trading_cards
    ['card_zyphoon'] = {           label = 'Zyphoon',          weight = 10,    stack = false,    close = true,    description = 'Zyphoon',},

    -- Resource: jim_g_trading_cards
    ['card_stone_crusher'] = {     label = 'Stone Crusher',    weight = 10,    stack = false,    close = true,    description = 'Stone Crusher',},

    -- Resource: jim_g_trading_cards
    ['card_star_touched'] = {      label = 'Star Touched',     weight = 10,    stack = false,    close = true,    description = 'Star Touched',},

    -- Resource: jim_g_trading_cards
    ['card_voidcaller'] = {        label = 'Voidcaller',       weight = 10,    stack = false,    close = true,    description = 'Voidcaller',},

    -- Resource: jim_g_trading_cards
    ['card_mistweaver'] = {        label = 'Mistweaver',       weight = 10,    stack = false,    close = true,    description = 'Mistweaver',},

    -- Resource: jim_g_trading_cards
    ['card_storm_juggernaut'] = {  label = 'Storm Juggernaut', weight = 10,    stack = false,    close = true,    description = 'Storm Juggernaut',},

    -- Resource: jim_g_trading_cards
    ['card_the_chronos_wraith'] = {label = 'The Chronos Wraith', weight = 10,   stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_vortex_stalker'] = {    label = 'Vortex Stalker',   weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_runebane_golem'] = {    label = 'Runebane Golem',   weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_ignis_rex'] = {         label = 'Ignis Rex',        weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_quillwing_harpy'] = {   label = 'Quillwing Harpy',  weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_terrashear_hydra'] = {  label = 'Terrashear Hydra', weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_gravemaw'] = {          label = 'Gravemaw',         weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_shadow_silk'] = {       label = 'Shadow Silk',      weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_fang'] = {              label = 'Fang',             weight = 10,    stack = false,    close = true,    description = 'Original art card',},

    -- Resource: jim_g_trading_cards
    ['card_flamewing_dragon'] = {  label = 'flamewing dragon', weight = 10,    stack = false,    close = true,    description = 'flamewing dragon',},

    -- Resource: jim_g_trading_cards
    ['card_ashspike_drake'] = {    label = 'ashspike drake',   weight = 10,    stack = false,    close = true,    description = 'ashspike drake',},

    -- Resource: jim_g_trading_cards
    ['card_cindergloom_fiend'] = { label = 'cindergloom fiend', weight = 10,   stack = false,    close = true,    description = 'cindergloom fiend',},

    -- Resource: jim_g_trading_cards
    ['card_bloodmaw_horror'] = {   label = 'bloodmaw horror',  weight = 10,    stack = false,    close = true,    description = 'bloodmaw horror',},

    -- Resource: jim_g_trading_cards
    ['card_bloodhorn_minotaur'] = {label = 'bloodhorn minotaur', weight = 10,   stack = false,    close = true,    description = 'bloodhorn minotaur',},

    -- Resource: jim_g_trading_cards
    ['card_darkspire_mage'] = {    label = 'darkspire mage',   weight = 10,    stack = false,    close = true,    description = 'darkspire mage',},

    -- Resource: jim_g_trading_cards
    ['card_chaos_drake'] = {       label = 'chaos drake',      weight = 10,    stack = false,    close = true,    description = 'chaos drake',},

    -- Resource: jim_g_trading_cards
    ['card_embermaw_hydra'] = {    label = 'embermaw hydra',   weight = 10,    stack = false,    close = true,    description = 'embermaw hydra',},

    -- Resource: jim_g_trading_cards
    ['card_obsidian_seer'] = {     label = 'obsidian seer',    weight = 10,    stack = false,    close = true,    description = 'obsidian seer',},

    -- Resource: jim_g_trading_cards
    ['card_fleshmire_beast'] = {   label = 'fleshmire beast',  weight = 10,    stack = false,    close = true,    description = 'fleshmire beast',},

    -- Resource: jim_g_trading_cards
    ['card_voidspawn_aberration'] = {label = 'voidspawn aberration', weight = 10, stack = false,   close = true,    description = 'voidspawn aberration',},

    -- Resource: jim_g_trading_cards
    ['card_soulweaver_sorceress'] = {label = 'soulweaver sorceress', weight = 10, stack = false,   close = true,    description = 'soulweaver sorceress',},

    -- Resource: jim_g_trading_cards
    ['card_nightshroud_hag'] = {   label = 'nightshroud hag',  weight = 10,    stack = false,    close = true,    description = 'nightshroud hag',},

    -- Resource: jim_g_trading_cards
    ['card_voidscream_specter'] = {label = 'voidscream specter', weight = 10,  stack = false,    close = true,    description = 'voidscream specter',},

    -- Resource: jim_g_trading_cards
    ['card_cindermaw_beast'] = {   label = 'cindermaw beast',  weight = 10,    stack = false,    close = true,    description = 'cindermaw beast',},

    -- Resource: jim_g_trading_cards
    ['card_voidmaw_beast'] = {     label = 'voidmaw beast',    weight = 10,    stack = false,    close = true,    description = 'voidmaw beast',},

    -- Resource: jim_g_trading_cards
    ['card_darkfang_beast'] = {    label = 'darkfang beast',   weight = 10,    stack = false,    close = true,    description = 'darkfang beast',},

    -- Resource: jim_g_trading_cards
    ['card_blazefang'] = {         label = 'blazefang',        weight = 10,    stack = false,    close = true,    description = 'blazefang',},

    -- Resource: jim_g_trading_cards
    ['card_ashclaw'] = {           label = 'ashclaw',          weight = 10,    stack = false,    close = true,    description = 'ashclaw',},

    -- Resource: jim_g_trading_cards
    ['card_shadowspike_predator'] = {label = 'shadowspike predator', weight = 10, stack = false,   close = true,    description = 'shadowspike predator',},

    -- Resource: jim_g_trading_cards
    ['card_ashenfang_dragon'] = {  label = 'ashenfang dragon', weight = 10,    stack = false,    close = true,    description = 'ashenfang dragon',},

    -- Resource: jim_g_trading_cards
    ['card_hunter_noble'] = {      label = 'hunter noble',     weight = 10,    stack = false,    close = true,    description = 'hunter noble',},

    -- Resource: jim_g_trading_cards
    ['card_cindergale'] = {        label = 'cindergale',       weight = 10,    stack = false,    close = true,    description = 'cindergale',},

    -- Resource: jim_g_trading_cards
    ['card_ancient_rall'] = {      label = 'ancient rall',     weight = 10,    stack = false,    close = true,    description = 'ancient rall',},

    -- Resource: jim_g_trading_cards
    ['card_shadowmancer'] = {      label = 'shadowmancer',     weight = 10,    stack = false,    close = true,    description = 'shadowmancer',},

    -- Resource: jim_g_trading_cards
    ['card_twilight_hag'] = {      label = 'twilight hag',     weight = 10,    stack = false,    close = true,    description = 'twilight hag',},

    -- Resource: jim_g_trading_cards
    ['card_seeall'] = {            label = 'seeall',           weight = 10,    stack = false,    close = true,    description = 'seeall',},

    -- Resource: jim_g_trading_cards
    ['card_ashfang_basilisk'] = {  label = 'ashfang basilisk', weight = 10,    stack = false,    close = true,    description = 'ashfang basilisk',},

    -- Resource: jim_g_trading_cards
    ['card_bonegrasp_horror'] = {  label = 'bonegrasp horror', weight = 10,    stack = false,    close = true,    description = 'bonegrasp horror',},

    -- Resource: jim_g_trading_cards
    ['card_boneclaw_horror'] = {   label = 'boneclaw horror',  weight = 10,    stack = false,    close = true,    description = 'boneclaw horror',},

    -- Resource: jim_g_trading_cards
    ['card_nightgore_abomination'] = {label = 'nightgore abomination', weight = 10, stack = false,  close = true,    description = 'nightgore abomination',},

    -- Resource: jim_g_trading_cards
    ['card_doomveil_phantom'] = {  label = 'doomveil phantom', weight = 10,    stack = false,    close = true,    description = 'doomveil phantom',},

    -- Resource: jim_g_trading_cards
    ['card_soulreaper_wraith'] = { label = 'soulreaper wraith', weight = 10,   stack = false,    close = true,    description = 'soulreaper wraith',},

    -- Resource: jim_g_trading_cards
    ['card_shadowclaw'] = {        label = 'shadowclaw',       weight = 10,    stack = false,    close = true,    description = 'shadowclaw',},

    -- Resource: jim_g_trading_cards
    ['card_bloodtalon_demon'] = {  label = 'bloodtalon demon', weight = 10,    stack = false,    close = true,    description = 'bloodtalon demon',},

    -- Resource: jim_g_trading_cards
    ['card_ashfang_ghoul'] = {     label = 'ashfang ghoul',    weight = 10,    stack = false,    close = true,    description = 'ashfang ghoul',},

    -- Resource: jim_g_trading_cards
    ['card_shadowfang_lycan'] = {  label = 'shadowfang lycan', weight = 10,    stack = false,    close = true,    description = 'shadowfang lycan',},

    -- Resource: jim_g_trading_cards
    ['card_nightfang_horror'] = {  label = 'nightfang horror', weight = 10,    stack = false,    close = true,    description = 'nightfang horror',},

    -- Resource: jim_g_trading_cards
    ['card_bonegloom_abomination'] = {label = 'bonegloom abomination', weight = 10, stack = false,  close = true,    description = 'bonegloom abomination',},

    -- Resource: jim_g_trading_cards
    ['card_darkshroud_wraith'] = { label = 'darkshroud wraith', weight = 10,   stack = false,    close = true,    description = 'darkshroud wraith',},

    -- Resource: jim_g_trading_cards
    ['card_battle_champion'] = {   label = 'battle champion',  weight = 10,    stack = false,    close = true,    description = 'battle champion',},

    -- Resource: jim_g_trading_cards
    ['card_scorchclaw'] = {        label = 'scorchclaw',       weight = 10,    stack = false,    close = true,    description = 'scorchclaw',},

    -- Resource: jim_g_trading_cards
    ['card_stormbeak'] = {         label = 'stormbeak',        weight = 10,    stack = false,    close = true,    description = 'stormbeak',},

    -- Resource: jim_g_trading_cards
    ['card_nightveil_witch'] = {   label = 'nightveil witch',  weight = 10,    stack = false,    close = true,    description = 'nightveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_stormfang_monster'] = { label = 'stormfang monster', weight = 10,   stack = false,    close = true,    description = 'stormfang monster',},

    -- Resource: jim_g_trading_cards
    ['card_desert_sentinel'] = {   label = 'desert sentinel',  weight = 10,    stack = false,    close = true,    description = 'desert sentinel',},

    -- Resource: jim_g_trading_cards
    ['card_soulshade_sorcerer'] = {label = 'soulshade sorcerer', weight = 10,  stack = false,    close = true,    description = 'soulshade sorcerer',},

    -- Resource: jim_g_trading_cards
    ['card_stormmaw_abomination'] = {label = 'stormmaw abomination', weight = 10, stack = false,   close = true,    description = 'stormmaw abomination',},

    -- Resource: jim_g_trading_cards
    ['card_ashclaw_behemoth'] = {  label = 'ashclaw behemoth', weight = 10,    stack = false,    close = true,    description = 'ashclaw behemoth',},

    -- Resource: jim_g_trading_cards
    ['card_shadowmaw_horror'] = {  label = 'shadowmaw horror', weight = 10,    stack = false,    close = true,    description = 'shadowmaw horror',},

    -- Resource: jim_g_trading_cards
    ['card_soulbloom_wizard'] = {  label = 'soulbloom wizard', weight = 10,    stack = false,    close = true,    description = 'soulbloom wizard',},

    -- Resource: jim_g_trading_cards
    ['card_voidfeather_specter'] = {label = 'voidfeather specter', weight = 10, stack = false,   close = true,    description = 'voidfeather specter',},

    -- Resource: jim_g_trading_cards
    ['card_cinderveil_witch'] = {  label = 'cinderveil witch', weight = 10,    stack = false,    close = true,    description = 'cinderveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_ironveil_witch'] = {    label = 'ironveil witch',   weight = 10,    stack = false,    close = true,    description = 'ironveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_noble_guardian'] = {    label = 'noble guardian',   weight = 10,    stack = false,    close = true,    description = 'noble guardian',},

    -- Resource: jim_g_trading_cards
    ['card_ironhide_colossus'] = { label = 'ironhide colossus', weight = 10,   stack = false,    close = true,    description = 'ironhide colossus',},

    -- Resource: jim_g_trading_cards
    ['card_gravefang_specter'] = { label = 'gravefang specter', weight = 10,   stack = false,    close = true,    description = 'gravefang specter',},

    -- Resource: jim_g_trading_cards
    ['card_soulfang_wraith'] = {   label = 'soulfang wraith',  weight = 10,    stack = false,    close = true,    description = 'soulfang wraith',},

    -- Resource: jim_g_trading_cards
    ['card_scorchmaw_horror'] = {  label = 'scorchmaw horror', weight = 10,    stack = false,    close = true,    description = 'scorchmaw horror',},

    -- Resource: jim_g_trading_cards
    ['card_iron_vigilant'] = {     label = 'iron vigilant',    weight = 10,    stack = false,    close = true,    description = 'iron vigilant',},

    -- Resource: jim_g_trading_cards
    ['card_shadowwing_horror'] = { label = 'shadowwing horror', weight = 10,   stack = false,    close = true,    description = 'shadowwing horror',},

    -- Resource: jim_g_trading_cards
    ['card_bloodbeak_fiend'] = {   label = 'bloodbeak fiend',  weight = 10,    stack = false,    close = true,    description = 'bloodbeak fiend',},

    -- Resource: jim_g_trading_cards
    ['card_frostbloom_enchantress'] = {label = 'frostbloom enchantress', weight = 10, stack = false, close = true,    description = 'frostbloom enchantress',},

    -- Resource: jim_g_trading_cards
    ['card_stormveil_sorcerer'] = {label = 'stormveil sorcerer', weight = 10,  stack = false,    close = true,    description = 'stormveil sorcerer',},

    -- Resource: jim_g_trading_cards
    ['card_blightthorn_witch'] = { label = 'blightthorn witch', weight = 10,    stack = false,    close = true,    description = 'blightthorn witch',},

    -- Resource: jim_g_trading_cards
    ['card_ironscale'] = {         label = 'ironscale',        weight = 10,    stack = false,    close = true,    description = 'ironscale',},

    -- Resource: jim_g_trading_cards
    ['card_iron_sigils_wizard'] = {label = 'iron sigils wizard', weight = 10,  stack = false,    close = true,    description = 'iron sigils wizard',},

    -- Resource: jim_g_trading_cards
    ['card_bloodshade_wizard'] = { label = 'bloodshade wizard', weight = 10,   stack = false,    close = true,    description = 'bloodshade wizard',},

    -- Resource: jim_g_trading_cards
    ['card_venomclaw_abomination'] = {label = 'venomclaw abomination', weight = 10, stack = false, close = true,    description = 'venomclaw abomination',},

    -- Resource: jim_g_trading_cards
    ['card_ironwing_gargant'] = {  label = 'ironwing gargant', weight = 10,    stack = false,    close = true,    description = 'ironwing gargant',},

    -- Resource: jim_g_trading_cards
    ['card_emberlash_drake'] = {   label = 'emberlash drake',  weight = 10,    stack = false,    close = true,    description = 'emberlash drake',},

    -- Resource: jim_g_trading_cards
    ['card_ashfeather'] = {        label = 'ashfeather',       weight = 10,    stack = false,    close = true,    description = 'ashfeather',},

    -- Resource: jim_g_trading_cards
    ['card_sable_coven_witch'] = { label = 'sable coven witch', weight = 10,   stack = false,    close = true,    description = 'sable coven witch',},

    -- Resource: jim_g_trading_cards
    ['card_wizard_of_broken_time'] = {label = 'wizard of broken time', weight = 10, stack = false, close = true,    description = 'wizard of broken time',},

    -- Resource: jim_g_trading_cards
    ['card_gravewing'] = {         label = 'gravewing',        weight = 10,    stack = false,    close = true,    description = 'gravewing',},

    -- Resource: jim_g_trading_cards
    ['card_wizard_of_frozen_runes'] = {label = 'wizard of frozen runes', weight = 10, stack = false, close = true,    description = 'wizard of frozen runes',},

    -- Resource: jim_g_trading_cards
    ['card_darktalon'] = {         label = 'darktalon',        weight = 10,    stack = false,    close = true,    description = 'darktalon',},

    -- Resource: jim_g_trading_cards
    ['card_gold_armorer'] = {      label = 'gold armorer',     weight = 10,    stack = false,    close = true,    description = 'gold armorer',},

    -- Resource: jim_g_trading_cards
    ['card_arcane_relic_wizard'] = {label = 'arcane relic wizard', weight = 10, stack = false,   close = true,    description = 'arcane relic wizard',},

    -- Resource: jim_g_trading_cards
    ['card_soulwing'] = {          label = 'soulwing',         weight = 10,    stack = false,    close = true,    description = 'soulwing',},

    -- Resource: jim_g_trading_cards
    ['card_cryptfire_wizard'] = {  label = 'cryptfire wizard', weight = 10,    stack = false,    close = true,    description = 'cryptfire wizard',},

    -- Resource: jim_g_trading_cards
    ['card_ashen_tome_wizard'] = { label = 'ashen tome wizard', weight = 10,   stack = false,    close = true,    description = 'ashen tome wizard',},

    -- Resource: jim_g_trading_cards
    ['card_frostscar_wyrm'] = {    label = 'frostscar wyrm',   weight = 10,    stack = false,    close = true,    description = 'frostscar wyrm',},

    -- Resource: jim_g_trading_cards
    ['card_moonseer'] = {          label = 'moonseer',         weight = 10,    stack = false,    close = true,    description = 'moonseer',},

    -- Resource: jim_g_trading_cards
    ['card_spellscar_wizard'] = {  label = 'spellscar wizard', weight = 10,    stack = false,    close = true,    description = 'spellscar wizard',},

    -- Resource: jim_g_trading_cards
    ['card_starfall_wizard'] = {   label = 'starfall wizard',  weight = 10,    stack = false,    close = true,    description = 'starfall wizard',},

    -- Resource: jim_g_trading_cards
    ['card_grim_archive_wizard'] = {label = 'grim archive wizard', weight = 10, stack = false,   close = true,    description = 'grim archive wizard',},

    -- Resource: jim_g_trading_cards
    ['card_gravebloom_witch'] = {  label = 'gravebloom witch', weight = 10,    stack = false,    close = true,    description = 'gravebloom witch',},

    -- Resource: jim_g_trading_cards
    ['card_voidbinding_wizard'] = {label = 'voidbinding wizard', weight = 10,  stack = false,    close = true,    description = 'voidbinding wizard',},

    -- Resource: jim_g_trading_cards
    ['card_thorncurse_witch'] = {  label = 'thorncurse witch', weight = 10,    stack = false,    close = true,    description = 'thorncurse witch',},

    -- Resource: jim_g_trading_cards
    ['card_cinderbone_witch'] = {  label = 'cinderbone witch', weight = 10,    stack = false,    close = true,    description = 'cinderbone witch',},

    -- Resource: jim_g_trading_cards
    ['card_moonrot_witch'] = {     label = 'moonrot witch',    weight = 10,    stack = false,    close = true,    description = 'moonrot witch',},

    -- Resource: jim_g_trading_cards
    ['card_nighthex_witch'] = {    label = 'nighthex witch',   weight = 10,    stack = false,    close = true,    description = 'nighthex witch',},

    -- Resource: jim_g_trading_cards
    ['card_cryptmist_specter'] = { label = 'cryptmist specter', weight = 10,   stack = false,    close = true,    description = 'cryptmist specter',},

    -- Resource: jim_g_trading_cards
    ['card_shadowflame_elemental'] = {label = 'shadowflame elemental', weight = 10, stack = false, close = true,    description = 'shadowflame elemental',},

    -- Resource: jim_g_trading_cards
    ['card_bloodveil_witch'] = {   label = 'bloodveil witch',  weight = 10,    stack = false,    close = true,    description = 'bloodveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_star_noble'] = {        label = 'star noble',       weight = 10,    stack = false,    close = true,    description = 'star noble',},

    -- Resource: jim_g_trading_cards
    ['card_sunken_prince'] = {     label = 'sunken prince',    weight = 10,    stack = false,    close = true,    description = 'sunken prince',},

    -- Resource: jim_g_trading_cards
    ['card_soulmaw_wraith'] = {    label = 'soulmaw wraith',   weight = 10,    stack = false,    close = true,    description = 'soulmaw wraith',},

    -- Resource: jim_g_trading_cards
    ['card_voidcaller_witch'] = {  label = 'voidcaller witch', weight = 10,    stack = false,    close = true,    description = 'voidcaller witch',},

    -- Resource: jim_g_trading_cards
    ['card_cindercloak_wizard'] = {label = 'cindercloak wizard', weight = 10,  stack = false,    close = true,    description = 'cindercloak wizard',},

    -- Resource: jim_g_trading_cards
    ['card_emberflame_witch'] = {  label = 'emberflame witch', weight = 10,    stack = false,    close = true,    description = 'emberflame witch',},

    -- Resource: jim_g_trading_cards
    ['card_moon_lancer'] = {       label = 'moon lancer',      weight = 10,    stack = false,    close = true,    description = 'moon lancer',},

    -- Resource: jim_g_trading_cards
    ['card_fallen_scribe'] = {     label = 'fallen scribe',    weight = 10,    stack = false,    close = true,    description = 'fallen scribe',},

    -- Resource: jim_g_trading_cards
    ['card_dreadbloom_witch'] = {  label = 'dreadbloom witch', weight = 10,    stack = false,    close = true,    description = 'dreadbloom witch',},

    -- Resource: jim_g_trading_cards
    ['card_gravewhisper'] = {      label = 'gravewhisper',     weight = 10,    stack = false,    close = true,    description = 'gravewhisper',},

    -- Resource: jim_g_trading_cards
    ['card_high_priest'] = {       label = 'high priest',      weight = 10,    stack = false,    close = true,    description = 'high priest',},

    -- Resource: jim_g_trading_cards
    ['card_pharaoh_ruler'] = {     label = 'pharaoh ruler',    weight = 10,    stack = false,    close = true,    description = 'pharaoh ruler',},

    -- Resource: jim_g_trading_cards
    ['card_flameveil_witch'] = {   label = 'flameveil witch',  weight = 10,    stack = false,    close = true,    description = 'flameveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_soulveil_witch'] = {    label = 'soulveil witch',   weight = 10,    stack = false,    close = true,    description = 'soulveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_bloodrot_witch'] = {    label = 'bloodrot witch',   weight = 10,    stack = false,    close = true,    description = 'bloodrot witch',},

    -- Resource: jim_g_trading_cards
    ['card_nightgloom_witch'] = {  label = 'nightgloom witch', weight = 10,    stack = false,    close = true,    description = 'nightgloom witch',},

    -- Resource: jim_g_trading_cards
    ['card_shadowbloom_witch'] = { label = 'shadowbloom witch', weight = 10,   stack = false,    close = true,    description = 'shadowbloom witch',},

    -- Resource: jim_g_trading_cards
    ['card_cryptveil_witch'] = {   label = 'cryptveil witch',  weight = 10,    stack = false,    close = true,    description = 'cryptveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_frostbane_sorcerer'] = {label = 'frostbane sorcerer', weight = 10,  stack = false,    close = true,    description = 'frostbane sorcerer',},

    -- Resource: jim_g_trading_cards
    ['card_stormbinder'] = {       label = 'stormbinder',      weight = 10,    stack = false,    close = true,    description = 'stormbinder',},

    -- Resource: jim_g_trading_cards
    ['card_ashen_circle_witch'] = {label = 'ashen circle witch', weight = 10,  stack = false,    close = true,    description = 'ashen circle witch',},

    -- Resource: jim_g_trading_cards
    ['card_scorchtome'] = {        label = 'scorchtome',       weight = 10,    stack = false,    close = true,    description = 'scorchtome',},

    -- Resource: jim_g_trading_cards
    ['card_voidveil_witch'] = {    label = 'voidveil witch',   weight = 10,    stack = false,    close = true,    description = 'voidveil witch',},

    -- Resource: jim_g_trading_cards
    ['card_dark_archenemy'] = {    label = 'dark archenemy',   weight = 10,    stack = false,    close = true,    description = 'dark archenemy',},

    -- Resource: jim_g_trading_cards
    ['card_android_aria_v3'] = {   label = 'Android Aria V3',   weight = 10,    stack = false,    close = true,    description = 'Android Aria V3',},

    -- Resource: jim_g_trading_cards
    ['card_android_final_form'] = {label = 'Android Final Form', weight = 10,   stack = false,    close = true,    description = 'Android Final Form',},

    -- Resource: jim_g_trading_cards
    ['card_android_izumi_x'] = {   label = 'Android Izumi X',   weight = 10,    stack = false,    close = true,    description = 'Android Izumi X',},

    -- Resource: jim_g_trading_cards
    ['card_android_jin_model_s'] = {label = 'Android Jin Model S', weight = 10, stack = false,    close = true,    description = 'Android Jin Model S',},

    -- Resource: jim_g_trading_cards
    ['card_android_kaya_flow'] = { label = 'Android Kaya Flow', weight = 10,    stack = false,    close = true,    description = 'Android Kaya Flow',},

    -- Resource: jim_g_trading_cards
    ['card_android_natsu_g'] = {   label = 'Android Natsu G',   weight = 10,    stack = false,    close = true,    description = 'Android Natsu G',},

    -- Resource: jim_g_trading_cards
    ['card_android_t_80_girl'] = { label = 'Android T-80 Girl', weight = 10,    stack = false,    close = true,    description = 'Android T-80 Girl',},

    -- Resource: jim_g_trading_cards
    ['card_android_unit_99'] = {   label = 'Android Unit 99',   weight = 10,    stack = false,    close = true,    description = 'Android Unit 99',},

    -- Resource: jim_g_trading_cards
    ['card_aoi_vector_girl'] = {   label = 'Aoi Vector Girl',   weight = 10,    stack = false,    close = true,    description = 'Aoi Vector Girl',},

    -- Resource: jim_g_trading_cards
    ['card_asuka_saber_vessel'] = {label = 'Asuka Saber Vessel', weight = 10,   stack = false,    close = true,    description = 'Asuka Saber Vessel',},

    -- Resource: jim_g_trading_cards
    ['card_ayaka_armor_angel'] = { label = 'Ayaka Armor Angel', weight = 10,    stack = false,    close = true,    description = 'Ayaka Armor Angel',},

    -- Resource: jim_g_trading_cards
    ['card_chihiro_cradle_pilot'] = {label = 'Chihiro Cradle Pilot', weight = 10, stack = false,   close = true,    description = 'Chihiro Cradle Pilot',},

    -- Resource: jim_g_trading_cards
    ['card_cyborg_benji_blast'] = {label = 'Cyborg Benji Blast', weight = 10,   stack = false,    close = true,    description = 'Cyborg Benji Blast',},

    -- Resource: jim_g_trading_cards
    ['card_cyborg_daisuke_x'] = {  label = 'Cyborg Daisuke X',  weight = 10,    stack = false,    close = true,    description = 'Cyborg Daisuke X',},

    -- Resource: jim_g_trading_cards
    ['card_cyborg_goro_tank'] = {  label = 'Cyborg Goro Tank',  weight = 10,    stack = false,    close = true,    description = 'Cyborg Goro Tank',},

    -- Resource: jim_g_trading_cards
    ['card_cyborg_kenji_prime'] = {label = 'Cyborg Kenji Prime', weight = 10,   stack = false,    close = true,    description = 'Cyborg Kenji Prime',},

    -- Resource: jim_g_trading_cards
    ['card_cyborg_raiden_v'] = {   label = 'Cyborg Raiden V',   weight = 10,    stack = false,    close = true,    description = 'Cyborg Raiden V',},

    -- Resource: jim_g_trading_cards
    ['card_cyborg_zane_rogue'] = { label = 'Cyborg Zane Rogue', weight = 10,    stack = false,    close = true,    description = 'Cyborg Zane Rogue',},

    -- Resource: jim_g_trading_cards
    ['card_daichi_gravity_king'] = {label = 'Daichi Gravity King', weight = 10, stack = false,    close = true,    description = 'Daichi Gravity King',},

    -- Resource: jim_g_trading_cards
    ['card_eri_plasma_witch'] = {  label = 'Eri Plasma Witch',  weight = 10,    stack = false,    close = true,    description = 'Eri Plasma Witch',},

    -- Resource: jim_g_trading_cards
    ['card_fuka_frost_android'] = {label = 'Fuka Frost Android', weight = 10,   stack = false,    close = true,    description = 'Fuka Frost Android',},

    -- Resource: jim_g_trading_cards
    ['card_gaku_ground_zero'] = {  label = 'Gaku Ground Zero',  weight = 10,    stack = false,    close = true,    description = 'Gaku Ground Zero',},

    -- Resource: jim_g_trading_cards
    ['card_gen_cortex_crusher'] = {label = 'Gen Cortex Crusher', weight = 10,   stack = false,    close = true,    description = 'Gen Cortex Crusher',},

    -- Resource: jim_g_trading_cards
    ['card_genesis_eve_girl'] = {  label = 'Genesis Eve Girl',  weight = 10,    stack = false,    close = true,    description = 'Genesis Eve Girl',},

    -- Resource: jim_g_trading_cards
    ['card_hana_neon_sniper'] = {  label = 'Hana Neon Sniper',  weight = 10,    stack = false,    close = true,    description = 'Hana Neon Sniper',},

    -- Resource: jim_g_trading_cards
    ['card_haru_wire_walker'] = {  label = 'Haru Wire Walker',  weight = 10,    stack = false,    close = true,    description = 'Haru Wire Walker',},

    -- Resource: jim_g_trading_cards
    ['card_hikari_light_speed'] = {label = 'Hikari Light Speed', weight = 10,   stack = false,    close = true,    description = 'Hikari Light Speed',},

    -- Resource: jim_g_trading_cards
    ['card_hina_echo_dancer'] = {  label = 'Hina Echo Dancer',  weight = 10,    stack = false,    close = true,    description = 'Hina Echo Dancer',},

    -- Resource: jim_g_trading_cards
    ['card_hiro_bolt_mechanic'] = {label = 'Hiro Bolt Mechanic', weight = 10,   stack = false,    close = true,    description = 'Hiro Bolt Mechanic',},

    -- Resource: jim_g_trading_cards
    ['card_ichiro_signal_lost'] = {label = 'Ichiro Signal Lost', weight = 10,   stack = false,    close = true,    description = 'Ichiro Signal Lost',},

    -- Resource: jim_g_trading_cards
    ['card_itsuki_forest_hacker'] = {label = 'Itsuki Forest Hacker', weight = 10, stack = false,  close = true,    description = 'Itsuki Forest Hacker',},

    -- Resource: jim_g_trading_cards
    ['card_izumi_neon_assassin'] = {label = 'Izumi Neon Assassin', weight = 10,  stack = false,    close = true,    description = 'Izumi Neon Assassin',},

    -- Resource: jim_g_trading_cards
    ['card_jin_iron_blood'] = {    label = 'Jin Iron Blood',    weight = 10,    stack = false,    close = true,    description = 'Jin Iron Blood',},

    -- Resource: jim_g_trading_cards
    ['card_kaito_storm_rider'] = { label = 'Kaito Storm Rider', weight = 10,    stack = false,    close = true,    description = 'Kaito Storm Rider',},

    -- Resource: jim_g_trading_cards
    ['card_karin_spark_medic'] = { label = 'Karin Spark Medic', weight = 10,    stack = false,    close = true,    description = 'Karin Spark Medic',},

    -- Resource: jim_g_trading_cards
    ['card_keiko_wire_puppet'] = { label = 'Keiko Wire Puppet', weight = 10,    stack = false,    close = true,    description = 'Keiko Wire Puppet',},

    -- Resource: jim_g_trading_cards
    ['card_ken_carbon_fist'] = {   label = 'Ken Carbon Fist',   weight = 10,    stack = false,    close = true,    description = 'Ken Carbon Fist',},

    -- Resource: jim_g_trading_cards
    ['card_kenshin_neo_samurai'] = {label = 'Kenshin Neo Samurai', weight = 10,  stack = false,    close = true,    description = 'Kenshin Neo Samurai',},

    -- Resource: jim_g_trading_cards
    ['card_kira_blade_dancer'] = { label = 'Kira Blade Dancer', weight = 10,    stack = false,    close = true,    description = 'Kira Blade Dancer',},

    -- Resource: jim_g_trading_cards
    ['card_koharu_glitch_girl'] = {label = 'Koharu Glitch Girl', weight = 10,   stack = false,    close = true,    description = 'Koharu Glitch Girl',},

    -- Resource: jim_g_trading_cards
    ['card_kouta_drift_king'] = {  label = 'Kouta Drift King',  weight = 10,    stack = false,    close = true,    description = 'Kouta Drift King',},

    -- Resource: jim_g_trading_cards
    ['card_kyosuke_void_walker'] = {label = 'Kyosuke Void Walker', weight = 10,  stack = false,    close = true,    description = 'Kyosuke Void Walker',},

    -- Resource: jim_g_trading_cards
    ['card_last_hope_aria'] = {    label = 'Last Hope Aria',    weight = 10,    stack = false,    close = true,    description = 'Last Hope Aria',},

    -- Resource: jim_g_trading_cards
    ['card_legendary_yuki_blade'] = {label = 'Legendary Yuki Blade', weight = 10, stack = false,   close = true,    description = 'Legendary Yuki Blade',},

    -- Resource: jim_g_trading_cards
    ['card_luna_ghost_pilot'] = {  label = 'Luna Ghost Pilot',  weight = 10,    stack = false,    close = true,    description = 'Luna Ghost Pilot',},

    -- Resource: jim_g_trading_cards
    ['card_mai_titanium_rose'] = { label = 'Mai Titanium Rose', weight = 10,    stack = false,    close = true,    description = 'Mai Titanium Rose',},

    -- Resource: jim_g_trading_cards
    ['card_makoto_justice_bot'] = {label = 'Makoto Justice Bot', weight = 10,   stack = false,    close = true,    description = 'Makoto Justice Bot',},

    -- Resource: jim_g_trading_cards
    ['card_masaru_heavy_metal'] = {label = 'Masaru Heavy Metal', weight = 10,   stack = false,    close = true,    description = 'Masaru Heavy Metal',},

    -- Resource: jim_g_trading_cards
    ['card_mecha_dojo_master'] = { label = 'Mecha Dojo Master', weight = 10,    stack = false,    close = true,    description = 'Mecha Dojo Master',},

    -- Resource: jim_g_trading_cards
    ['card_mecha_kensei_g'] = {    label = 'Mecha Kensei G',    weight = 10,    stack = false,    close = true,    description = 'Mecha Kensei G',},

    -- Resource: jim_g_trading_cards
    ['card_mecha_maid_unit_1'] = { label = 'Mecha Maid Unit 1', weight = 10,    stack = false,    close = true,    description = 'Mecha Maid Unit 1',},

    -- Resource: jim_g_trading_cards
    ['card_mecha_sentry_m_2'] = {  label = 'Mecha Sentry M 2',  weight = 10,    stack = false,    close = true,    description = 'Mecha Sentry M 2',},

    -- Resource: jim_g_trading_cards
    ['card_mika_data_runner'] = {  label = 'Mika Data Runner',  weight = 10,    stack = false,    close = true,    description = 'Mika Data Runner',},

    -- Resource: jim_g_trading_cards
    ['card_minato_harbor_guard'] = {label = 'Minato Harbor Guard', weight = 10,  stack = false,    close = true,    description = 'Minato Harbor Guard',},

    -- Resource: jim_g_trading_cards
    ['card_misaki_laser_eye'] = {  label = 'Misaki Laser Eye',  weight = 10,    stack = false,    close = true,    description = 'Misaki Laser Eye',},

    -- Resource: jim_g_trading_cards
    ['card_miyuu_mirror_mask'] = { label = 'Miyuu Mirror Mask', weight = 10,    stack = false,    close = true,    description = 'Miyuu Mirror Mask',},

    -- Resource: jim_g_trading_cards
    ['card_momo_binary_brawler'] = {label = 'Momo Binary Brawler', weight = 10,  stack = false,    close = true,    description = 'Momo Binary Brawler',},

    -- Resource: jim_g_trading_cards
    ['card_nanami_nano_slayer'] = {label = 'Nanami Nano Slayer', weight = 10,   stack = false,    close = true,    description = 'Nanami Nano Slayer',},

    -- Resource: jim_g_trading_cards
    ['card_nao_silicon_heart'] = { label = 'Nao Silicon Heart', weight = 10,    stack = false,    close = true,    description = 'Nao Silicon Heart',},

    -- Resource: jim_g_trading_cards
    ['card_nozomi_solar_soul'] = { label = 'Nozomi Solar Soul', weight = 10,    stack = false,    close = true,    description = 'Nozomi Solar Soul',},

    -- Resource: jim_g_trading_cards
    ['card_overlord_mecha_saki'] = {label = 'Overlord Mecha Saki', weight = 10,  stack = false,    close = true,    description = 'Overlord Mecha Saki',},

    -- Resource: jim_g_trading_cards
    ['card_prototype_zero_boy'] = {label = 'Prototype Zero Boy', weight = 10,   stack = false,    close = true,    description = 'Prototype Zero Boy',},

    -- Resource: jim_g_trading_cards
    ['card_rei_system_proxy'] = {  label = 'Rei System Proxy',  weight = 10,    stack = false,    close = true,    description = 'Rei System Proxy',},

    -- Resource: jim_g_trading_cards
    ['card_ren_cyber_shinobi'] = { label = 'Ren Cyber Shinobi', weight = 10,    stack = false,    close = true,    description = 'Ren Cyber Shinobi',},

    -- Resource: jim_g_trading_cards
    ['card_rika_chrome_queen'] = { label = 'Rika Chrome Queen', weight = 10,    stack = false,    close = true,    description = 'Rika Chrome Queen',},

    -- Resource: jim_g_trading_cards
    ['card_rin_techno_geisha'] = { label = 'Rin Techno Geisha', weight = 10,    stack = false,    close = true,    description = 'Rin Techno Geisha',},

    -- Resource: jim_g_trading_cards
    ['card_rina_metal_soul'] = {  label = 'Rina Metal Soul',   weight = 10,    stack = false,    close = true,    description = 'Rina Metal Soul',},

    -- Resource: jim_g_trading_cards
    ['card_ritsuko_radar_girl'] = {label = 'Ritsuko Radar Girl', weight = 10,   stack = false,    close = true,    description = 'Ritsuko Radar Girl',},

    -- Resource: jim_g_trading_cards
    ['card_ryota_static_sword'] = {label = 'Ryota Static Sword', weight = 10,   stack = false,    close = true,    description = 'Ryota Static Sword',},

    -- Resource: jim_g_trading_cards
    ['card_ryu_street_warlord'] = {label = 'Ryu Street Warlord', weight = 10,   stack = false,    close = true,    description = 'Ryu Street Warlord',},

    -- Resource: jim_g_trading_cards
    ['card_ryusei_comet_crasher'] = {label = 'Ryusei Comet Crasher', weight = 10, stack = false,   close = true,    description = 'Ryusei Comet Crasher',},

    -- Resource: jim_g_trading_cards
    ['card_ryuu_dragon_hybrid'] = {label = 'Ryuu Dragon Hybrid', weight = 10,   stack = false,    close = true,    description = 'Ryuu Dragon Hybrid',},

    -- Resource: jim_g_trading_cards
    ['card_sae_circuit_seeker'] = {label = 'Sae Circuit Seeker', weight = 10,   stack = false,    close = true,    description = 'Sae Circuit Seeker',},

    -- Resource: jim_g_trading_cards
    ['card_sakura_cyber_vixen'] = {label = 'Sakura Cyber Vixen', weight = 10,   stack = false,    close = true,    description = 'Sakura Cyber Vixen',},

    -- Resource: jim_g_trading_cards
    ['card_satoshi_code_breaker'] = {label = 'Satoshi Code Breaker', weight = 10, stack = false,   close = true,    description = 'Satoshi Code Breaker',},

    -- Resource: jim_g_trading_cards
    ['card_sayuri_neon_ghost'] = { label = 'Sayuri Neon Ghost', weight = 10,    stack = false,    close = true,    description = 'Sayuri Neon Ghost',},

    -- Resource: jim_g_trading_cards
    ['card_shadow_council_ren'] = {label = 'Shadow Council Ren', weight = 10,   stack = false,    close = true,    description = 'Shadow Council Ren',},

    -- Resource: jim_g_trading_cards
    ['card_shin_genesis_alpha_boy'] = {label = 'Shin Genesis Alpha Boy', weight = 10, stack = false, close = true,    description = 'Shin Genesis Alpha Boy',},

    -- Resource: jim_g_trading_cards
    ['card_shin_genesis_warlord'] = {label = 'Shin Genesis Warlord', weight = 10, stack = false,  close = true,    description = 'Shin Genesis Warlord',},

    -- Resource: jim_g_trading_cards
    ['card_shizuku_water_wire'] = {label = 'Shizuku Water Wire', weight = 10,   stack = false,    close = true,    description = 'Shizuku Water Wire',},

    -- Resource: jim_g_trading_cards
    ['card_sho_vortex_pilot'] = {  label = 'Sho Vortex Pilot',  weight = 10,    stack = false,    close = true,    description = 'Sho Vortex Pilot',},

    -- Resource: jim_g_trading_cards
    ['card_shun_flash_rebel'] = {  label = 'Shun Flash Rebel',  weight = 10,    stack = false,    close = true,    description = 'Shun Flash Rebel',},

    -- Resource: jim_g_trading_cards
    ['card_sora_plasma_princess'] = {label = 'Sora Plasma Princess', weight = 10, stack = false,  close = true,    description = 'Sora Plasma Princess',},

    -- Resource: jim_g_trading_cards
    ['card_sora_sky_stalker'] = {  label = 'Sora Sky Stalker',  weight = 10,    stack = false,    close = true,    description = 'Sora Sky Stalker',},

    -- Resource: jim_g_trading_cards
    ['card_sota_ransom_boy'] = {   label = 'Sota Ransom Boy',   weight = 10,    stack = false,    close = true,    description = 'Sota Ransom Boy',},

    -- Resource: jim_g_trading_cards
    ['card_taiga_tiger_tech'] = {  label = 'Taiga Tiger Tech',  weight = 10,    stack = false,    close = true,    description = 'Taiga Tiger Tech',},

    -- Resource: jim_g_trading_cards
    ['card_takumi_tech_monk'] = {  label = 'Takumi Tech Monk',  weight = 10,    stack = false,    close = true,    description = 'Takumi Tech Monk',},

    -- Resource: jim_g_trading_cards
    ['card_taro_scrap_dealer'] = { label = 'Taro Scrap Dealer', weight = 10,    stack = false,    close = true,    description = 'Taro Scrap Dealer',},

    -- Resource: jim_g_trading_cards
    ['card_the_jg_prototype'] = {  label = 'The JG Prototype',  weight = 10,    stack = false,    close = true,    description = 'The JG Prototype',},

    -- Resource: jim_g_trading_cards
    ['card_the_shin_original_boy'] = {label = 'The Shin Original Boy', weight = 10, stack = false, close = true,    description = 'The Shin Original Boy',},

    -- Resource: jim_g_trading_cards
    ['card_toshi_gear_shifter'] = {label = 'Toshi Gear Shifter', weight = 10,   stack = false,    close = true,    description = 'Toshi Gear Shifter',},

    -- Resource: jim_g_trading_cards
    ['card_tsubasa_wing_unit'] = { label = 'Tsubasa Wing Unit', weight = 10,    stack = false,    close = true,    description = 'Tsubasa Wing Unit',},

    -- Resource: jim_g_trading_cards
    ['card_ultimate_shin_boy'] = { label = 'Ultimate Shin Boy', weight = 10,    stack = false,    close = true,    description = 'Ultimate Shin Boy',},

    -- Resource: jim_g_trading_cards
    ['card_unit_7_guardian'] = {   label = 'Unit 7 Guardian',   weight = 10,    stack = false,    close = true,    description = 'Unit 7 Guardian',},

    -- Resource: jim_g_trading_cards
    ['card_unit_alpha_tactician'] = {label = 'Unit Alpha Tactician', weight = 10, stack = false,  close = true,    description = 'Unit Alpha Tactician',},

    -- Resource: jim_g_trading_cards
    ['card_unit_delta_heavy'] = {  label = 'Unit Delta Heavy',  weight = 10,    stack = false,    close = true,    description = 'Unit Delta Heavy',},

    -- Resource: jim_g_trading_cards
    ['card_unit_gamma_sniper'] = {  label = 'Unit Gamma Sniper', weight = 10,    stack = false,    close = true,    description = 'Unit Gamma Sniper',},

    -- Resource: jim_g_trading_cards
    ['card_unit_iota_infiltrator'] = {label = 'Unit Iota Infiltrator', weight = 10, stack = false, close = true,    description = 'Unit Iota Infiltrator',},

    -- Resource: jim_g_trading_cards
    ['card_unit_kappa_hunter'] = { label = 'Unit Kappa Hunter', weight = 10,    stack = false,    close = true,    description = 'Unit Kappa Hunter',},

    -- Resource: jim_g_trading_cards
    ['card_unit_lambda_leader'] = {label = 'Unit Lambda Leader', weight = 10,   stack = false,    close = true,    description = 'Unit Lambda Leader',},

    -- Resource: jim_g_trading_cards
    ['card_unit_mu_executioner'] = {label = 'Unit Mu Executioner', weight = 10,  stack = false,    close = true,    description = 'Unit Mu Executioner',},

    -- Resource: jim_g_trading_cards
    ['card_unit_nyx_shadow_girl'] = {label = 'Unit Nyx Shadow Girl', weight = 10, stack = false,  close = true,    description = 'Unit Nyx Shadow Girl',},

    -- Resource: jim_g_trading_cards
    ['card_unit_omega_slayer'] = { label = 'Unit Omega Slayer', weight = 10,    stack = false,    close = true,    description = 'Unit Omega Slayer',},

    -- Resource: jim_g_trading_cards
    ['card_unit_sigma_sentry'] = { label = 'Unit Sigma Sentry', weight = 10,    stack = false,    close = true,    description = 'Unit Sigma Sentry',},

    -- Resource: jim_g_trading_cards
    ['card_unit_theta_ghost'] = {  label = 'Unit Theta Ghost',  weight = 10,    stack = false,    close = true,    description = 'Unit Theta Ghost',},

    -- Resource: jim_g_trading_cards
    ['card_unit_zeta_breaker'] = { label = 'Unit Zeta Breaker', weight = 10,    stack = false,    close = true,    description = 'Unit Zeta Breaker',},

    -- Resource: jim_g_trading_cards
    ['card_yuki_blade_daughter'] = {label = 'Yuki Blade Daughter', weight = 10, stack = false,   close = true,    description = 'Yuki Blade Daughter',},

    -- Resource: jim_g_trading_cards
    ['card_yumi_pulse_archer'] = { label = 'Yumi Pulse Archer', weight = 10,    stack = false,    close = true,    description = 'Yumi Pulse Archer',},

    -- Resource: jim_g_trading_cards
    ['card_yuna_core_breaker'] = { label = 'Yuna Core Breaker', weight = 10,    stack = false,    close = true,    description = 'Yuna Core Breaker',},

    -- Resource: jim_g_trading_cards
    ['card_yuto_neural_linker'] = {label = 'Yuto Neural Linker', weight = 10,   stack = false,    close = true,    description = 'Yuto Neural Linker',},

    -- Resource: jim_g_trading_cards
    ['card_ammit_eater'] = {      label = 'ammit eater',      weight = 10,    stack = false,    close = true,    description = 'ammit eater',},

    -- Resource: jim_g_trading_cards
    ['card_ankh_keeper'] = {      label = 'ankh keeper',      weight = 10,    stack = false,    close = true,    description = 'ankh keeper',},

    -- Resource: jim_g_trading_cards
    ['card_ankhbrace'] = {        label = 'ankhbrace',        weight = 10,    stack = false,    close = true,    description = 'ankhbrace',},

    -- Resource: jim_g_trading_cards
    ['card_ankhou_justice'] = {   label = 'ankhou justice',   weight = 10,    stack = false,    close = true,    description = 'ankhou justice',},

    -- Resource: jim_g_trading_cards
    ['card_ankhouveil'] = {       label = 'ankhouveil',       weight = 10,    stack = false,    close = true,    description = 'ankhouveil',},

    -- Resource: jim_g_trading_cards
    ['card_anubis_guardian'] = {  label = 'anubis guardian',  weight = 10,    stack = false,    close = true,    description = 'anubis guardian',},

    -- Resource: jim_g_trading_cards
    ['card_apep_serpent'] = {     label = 'apep serpent',     weight = 10,    stack = false,    close = true,    description = 'apep serpent',},

    -- Resource: jim_g_trading_cards
    ['card_apepcoil'] = {         label = 'apepcoil',         weight = 10,    stack = false,    close = true,    description = 'apepcoil',},

    -- Resource: jim_g_trading_cards
    ['card_apepdevourer'] = {     label = 'apepdevourer',     weight = 10,    stack = false,    close = true,    description = 'apepdevourer',},

    -- Resource: jim_g_trading_cards
    ['card_apepshadow'] = {       label = 'apepshadow',       weight = 10,    stack = false,    close = true,    description = 'apepshadow',},

    -- Resource: jim_g_trading_cards
    ['card_aten_disk'] = {        label = 'aten disk',        weight = 10,    stack = false,    close = true,    description = 'aten disk',},

    -- Resource: jim_g_trading_cards
    ['card_atenflare_divine'] = { label = 'atenflare divine', weight = 10,    stack = false,    close = true,    description = 'atenflare divine',},

    -- Resource: jim_g_trading_cards
    ['card_bast_shadow'] = {      label = 'bast shadow',      weight = 10,    stack = false,    close = true,    description = 'bast shadow',},

    -- Resource: jim_g_trading_cards
    ['card_bastet_protector'] = { label = 'bastet protector', weight = 10,    stack = false,    close = true,    description = 'bastet protector',},

    -- Resource: jim_g_trading_cards
    ['card_bastetpurr'] = {       label = 'bastetpurr',       weight = 10,    stack = false,    close = true,    description = 'bastetpurr',},

    -- Resource: jim_g_trading_cards
    ['card_bastpatrol'] = {       label = 'bastpatrol',       weight = 10,    stack = false,    close = true,    description = 'bastpatrol',},

    -- Resource: jim_g_trading_cards
    ['card_bastpaw'] = {          label = 'bastpaw',          weight = 10,    stack = false,    close = true,    description = 'bastpaw',},

    -- Resource: jim_g_trading_cards
    ['card_bastshadow'] = {       label = 'bastshadow',       weight = 10,    stack = false,    close = true,    description = 'bastshadow',},

    -- Resource: jim_g_trading_cards
    ['card_bennucry'] = {         label = 'bennucry',         weight = 10,    stack = false,    close = true,    description = 'bennucry',},

    -- Resource: jim_g_trading_cards
    ['card_bennuwing'] = {        label = 'bennuwing',        weight = 10,    stack = false,    close = true,    description = 'bennuwing',},

    -- Resource: jim_g_trading_cards
    ['card_dedunbring'] = {       label = 'dedunbring',       weight = 10,    stack = false,    close = true,    description = 'dedunbring',},

    -- Resource: jim_g_trading_cards
    ['card_dedunprosper'] = {     label = 'dedunprosper',     weight = 10,    stack = false,    close = true,    description = 'dedunprosper',},

    -- Resource: jim_g_trading_cards
    ['card_duat_guardian'] = {    label = 'duat guardian',    weight = 10,    stack = false,    close = true,    description = 'duat guardian',},

    -- Resource: jim_g_trading_cards
    ['card_duatveil'] = {         label = 'duatveil',         weight = 10,    stack = false,    close = true,    description = 'duatveil',},

    -- Resource: jim_g_trading_cards
    ['card_gebsoil'] = {          label = 'gebsoil',          weight = 10,    stack = false,    close = true,    description = 'gebsoil',},

    -- Resource: jim_g_trading_cards
    ['card_hapiflows'] = {        label = 'hapiflows',        weight = 10,    stack = false,    close = true,    description = 'hapiflows',},

    -- Resource: jim_g_trading_cards
    ['card_hapinile'] = {         label = 'hapinile',         weight = 10,    stack = false,    close = true,    description = 'hapinile',},

    -- Resource: jim_g_trading_cards
    ['card_hathor_goddess'] = {   label = 'hathor goddess',   weight = 10,    stack = false,    close = true,    description = 'hathor goddess',},

    -- Resource: jim_g_trading_cards
    ['card_hathorcharm'] = {      label = 'hathorcharm',      weight = 10,    stack = false,    close = true,    description = 'hathorcharm',},

    -- Resource: jim_g_trading_cards
    ['card_hathorhorn'] = {       label = 'hathorhorn',       weight = 10,    stack = false,    close = true,    description = 'hathorhorn',},

    -- Resource: jim_g_trading_cards
    ['card_hathorpulse'] = {      label = 'hathorpulse',      weight = 10,    stack = false,    close = true,    description = 'hathorpulse',},

    -- Resource: jim_g_trading_cards
    ['card_hathorvoice'] = {      label = 'hathorvoice',      weight = 10,    stack = false,    close = true,    description = 'hathorvoice',},

    -- Resource: jim_g_trading_cards
    ['card_horus_sky_warrior'] = {label = 'horus sky warrior', weight = 10,    stack = false,    close = true,    description = 'horus sky warrior',},

    -- Resource: jim_g_trading_cards
    ['card_horusfalcon'] = {      label = 'horusfalcon',      weight = 10,    stack = false,    close = true,    description = 'horusfalcon',},

    -- Resource: jim_g_trading_cards
    ['card_horusra_watcher'] = {  label = 'horusra watcher',  weight = 10,    stack = false,    close = true,    description = 'horusra watcher',},

    -- Resource: jim_g_trading_cards
    ['card_horuswatch'] = {       label = 'horuswatch',       weight = 10,    stack = false,    close = true,    description = 'horuswatch',},

    -- Resource: jim_g_trading_cards
    ['card_isis_mother'] = {      label = 'isis mother',      weight = 10,    stack = false,    close = true,    description = 'isis mother',},

    -- Resource: jim_g_trading_cards
    ['card_isisbless'] = {        label = 'isisbless',        weight = 10,    stack = false,    close = true,    description = 'isisbless',},

    -- Resource: jim_g_trading_cards
    ['card_isisglow'] = {         label = 'isisglow',         weight = 10,    stack = false,    close = true,    description = 'isisglow',},

    -- Resource: jim_g_trading_cards
    ['card_isisgrace'] = {        label = 'isisgrace',        weight = 10,    stack = false,    close = true,    description = 'isisgrace',},

    -- Resource: jim_g_trading_cards
    ['card_isisveil'] = {         label = 'isisveil',         weight = 10,    stack = false,    close = true,    description = 'isisveil',},

    -- Resource: jim_g_trading_cards
    ['card_keb_earth'] = {        label = 'keb earth',        weight = 10,    stack = false,    close = true,    description = 'keb earth',},

    -- Resource: jim_g_trading_cards
    ['card_kebrock'] = {          label = 'kebrock',          weight = 10,    stack = false,    close = true,    description = 'kebrock',},

    -- Resource: jim_g_trading_cards
    ['card_khepribeetle'] = {     label = 'khepribeetle',     weight = 10,    stack = false,    close = true,    description = 'khepribeetle',},

    -- Resource: jim_g_trading_cards
    ['card_kheprihold'] = {       label = 'kheprihold',       weight = 10,    stack = false,    close = true,    description = 'kheprihold',},

    -- Resource: jim_g_trading_cards
    ['card_khnemu_creator'] = {   label = 'khnemu creator',   weight = 10,    stack = false,    close = true,    description = 'khnemu creator',},

    -- Resource: jim_g_trading_cards
    ['card_khonsu_moon'] = {      label = 'khonsu moon',      weight = 10,    stack = false,    close = true,    description = 'khonsu moon',},

    -- Resource: jim_g_trading_cards
    ['card_khonsubright'] = {     label = 'khonsubright',     weight = 10,    stack = false,    close = true,    description = 'khonsubright',},

    -- Resource: jim_g_trading_cards
    ['card_khonsulight'] = {      label = 'khonsulight',      weight = 10,    stack = false,    close = true,    description = 'khonsulight',},

    -- Resource: jim_g_trading_cards
    ['card_khonsumoon'] = {       label = 'khonsumoon',       weight = 10,    stack = false,    close = true,    description = 'khonsumoon',},

    -- Resource: jim_g_trading_cards
    ['card_khonsusilver'] = {     label = 'khonsusilver',     weight = 10,    stack = false,    close = true,    description = 'khonsusilver',},

    -- Resource: jim_g_trading_cards
    ['card_maahes_huntress'] = {  label = 'maahes huntress',  weight = 10,    stack = false,    close = true,    description = 'maahes huntress',},

    -- Resource: jim_g_trading_cards
    ['card_maahes_lion'] = {      label = 'maahes lion',      weight = 10,    stack = false,    close = true,    description = 'maahes lion',},

    -- Resource: jim_g_trading_cards
    ['card_maahesclaw'] = {       label = 'maahesclaw',       weight = 10,    stack = false,    close = true,    description = 'maahesclaw',},

    -- Resource: jim_g_trading_cards
    ['card_maat_truth'] = {       label = 'maat truth',       weight = 10,    stack = false,    close = true,    description = 'maat truth',},

    -- Resource: jim_g_trading_cards
    ['card_maatlaw_truth'] = {    label = 'maatlaw truth',    weight = 10,    stack = false,    close = true,    description = 'maatlaw truth',},

    -- Resource: jim_g_trading_cards
    ['card_maatlawbalance'] = {   label = 'maatlawbalance',   weight = 10,    stack = false,    close = true,    description = 'maatlawbalance',},

    -- Resource: jim_g_trading_cards
    ['card_menkheper_ra'] = {     label = 'menkheper ra',     weight = 10,    stack = false,    close = true,    description = 'menkheper ra',},

    -- Resource: jim_g_trading_cards
    ['card_montu_striker'] = {    label = 'montu striker',    weight = 10,    stack = false,    close = true,    description = 'montu striker',},

    -- Resource: jim_g_trading_cards
    ['card_montu_warrior'] = {    label = 'montu warrior',    weight = 10,    stack = false,    close = true,    description = 'montu warrior',},

    -- Resource: jim_g_trading_cards
    ['card_montubreaker'] = {     label = 'montubreaker',     weight = 10,    stack = false,    close = true,    description = 'montubreaker',},

    -- Resource: jim_g_trading_cards
    ['card_montufury'] = {        label = 'montufury',        weight = 10,    stack = false,    close = true,    description = 'montufury',},

    -- Resource: jim_g_trading_cards
    ['card_nebet_majesty'] = {    label = 'nebet majesty',    weight = 10,    stack = false,    close = true,    description = 'nebet majesty',},

    -- Resource: jim_g_trading_cards
    ['card_neith_hunter'] = {     label = 'neith hunter',     weight = 10,    stack = false,    close = true,    description = 'neith hunter',},

    -- Resource: jim_g_trading_cards
    ['card_neitharrow'] = {       label = 'neitharrow',       weight = 10,    stack = false,    close = true,    description = 'neitharrow',},

    -- Resource: jim_g_trading_cards
    ['card_neithhunt'] = {        label = 'neithhunt',        weight = 10,    stack = false,    close = true,    description = 'neithhunt',},

    -- Resource: jim_g_trading_cards
    ['card_nephthys_shadow'] = {  label = 'nephthys shadow',  weight = 10,    stack = false,    close = true,    description = 'nephthys shadow',},

    -- Resource: jim_g_trading_cards
    ['card_nephthysdark'] = {     label = 'nephthysdark',     weight = 10,    stack = false,    close = true,    description = 'nephthysdark',},

    -- Resource: jim_g_trading_cards
    ['card_nephthysveil'] = {     label = 'nephthysveil',     weight = 10,    stack = false,    close = true,    description = 'nephthysveil',},

    -- Resource: jim_g_trading_cards
    ['card_nun_primordial'] = {   label = 'nun primordial',   weight = 10,    stack = false,    close = true,    description = 'nun primordial',},

    -- Resource: jim_g_trading_cards
    ['card_osiris_ruler'] = {     label = 'osiris ruler',     weight = 10,    stack = false,    close = true,    description = 'osiris ruler',},

    -- Resource: jim_g_trading_cards
    ['card_osirislament'] = {     label = 'osirislament',     weight = 10,    stack = false,    close = true,    description = 'osirislament',},

    -- Resource: jim_g_trading_cards
    ['card_osiriswatch'] = {      label = 'osiriswatch',      weight = 10,    stack = false,    close = true,    description = 'osiriswatch',},

    -- Resource: jim_g_trading_cards
    ['card_ptah_creator'] = {     label = 'ptah creator',     weight = 10,    stack = false,    close = true,    description = 'ptah creator',},

    -- Resource: jim_g_trading_cards
    ['card_ptahforge'] = {        label = 'ptahforge',        weight = 10,    stack = false,    close = true,    description = 'ptahforge',},

    -- Resource: jim_g_trading_cards
    ['card_ptahhammer'] = {       label = 'ptahhammer',       weight = 10,    stack = false,    close = true,    description = 'ptahhammer',},

    -- Resource: jim_g_trading_cards
    ['card_ra_sun_god'] = {       label = 'ra sun god',       weight = 10,    stack = false,    close = true,    description = 'ra sun god',},

    -- Resource: jim_g_trading_cards
    ['card_raet_lightbringer'] = {label = 'raet lightbringer', weight = 10,   stack = false,    close = true,    description = 'raet lightbringer',},

    -- Resource: jim_g_trading_cards
    ['card_raet_sun'] = {         label = 'raet sun',          weight = 10,    stack = false,    close = true,    description = 'raet sun',},

    -- Resource: jim_g_trading_cards
    ['card_raflame'] = {          label = 'raflame',           weight = 10,    stack = false,    close = true,    description = 'raflame',},

    -- Resource: jim_g_trading_cards
    ['card_raflare'] = {          label = 'raflare',           weight = 10,    stack = false,    close = true,    description = 'raflare',},

    -- Resource: jim_g_trading_cards
    ['card_raheat'] = {           label = 'raheat',            weight = 10,    stack = false,    close = true,    description = 'raheat',},

    -- Resource: jim_g_trading_cards
    ['card_renpetcircle'] = {     label = 'renpetcircle',      weight = 10,    stack = false,    close = true,    description = 'renpetcircle',},

    -- Resource: jim_g_trading_cards
    ['card_renpetcycle'] = {      label = 'renpetcycle',       weight = 10,    stack = false,    close = true,    description = 'renpetcycle',},

    -- Resource: jim_g_trading_cards
    ['card_sah_star'] = {         label = 'sah star',          weight = 10,    stack = false,    close = true,    description = 'sah star',},

    -- Resource: jim_g_trading_cards
    ['card_sahglow'] = {          label = 'sahglow',           weight = 10,    stack = false,    close = true,    description = 'sahglow',},

    -- Resource: jim_g_trading_cards
    ['card_sahstar'] = {          label = 'sahstar',           weight = 10,    stack = false,    close = true,    description = 'sahstar',},

    -- Resource: jim_g_trading_cards
    ['card_sahure_guardian'] = {  label = 'sahure guardian',   weight = 10,    stack = false,    close = true,    description = 'sahure guardian',},

    -- Resource: jim_g_trading_cards
    ['card_sauket_magic'] = {     label = 'sauket magic',      weight = 10,    stack = false,    close = true,    description = 'sauket magic',},

    -- Resource: jim_g_trading_cards
    ['card_sauketcloak'] = {      label = 'sauketcloak',       weight = 10,    stack = false,    close = true,    description = 'sauketcloak',},

    -- Resource: jim_g_trading_cards
    ['card_sekmet_warrior'] = {   label = 'sekmet warrior',    weight = 10,    stack = false,    close = true,    description = 'sekmet warrior',},

    -- Resource: jim_g_trading_cards
    ['card_sekmetclaw'] = {       label = 'sekmetclaw',        weight = 10,    stack = false,    close = true,    description = 'sekmetclaw',},

    -- Resource: jim_g_trading_cards
    ['card_sekmetfury'] = {       label = 'sekmetfury',        weight = 10,    stack = false,    close = true,    description = 'sekmetfury',},

    -- Resource: jim_g_trading_cards
    ['card_serqetsting'] = {      label = 'serqetsting',       weight = 10,    stack = false,    close = true,    description = 'serqetsting',},

    -- Resource: jim_g_trading_cards
    ['card_serqetstinger'] = {    label = 'serqetstinger',     weight = 10,    stack = false,    close = true,    description = 'serqetstinger',},

    -- Resource: jim_g_trading_cards
    ['card_set_chaos_lord'] = {   label = 'set chaos lord',    weight = 10,    stack = false,    close = true,    description = 'set chaos lord',},

    -- Resource: jim_g_trading_cards
    ['card_setchaos'] = {         label = 'setchaos',          weight = 10,    stack = false,    close = true,    description = 'setchaos',},

    -- Resource: jim_g_trading_cards
    ['card_setstorm'] = {         label = 'setstorm',          weight = 10,    stack = false,    close = true,    description = 'setstorm',},

    -- Resource: jim_g_trading_cards
    ['card_shu_air'] = {          label = 'shu air',           weight = 10,    stack = false,    close = true,    description = 'shu air',},

    -- Resource: jim_g_trading_cards
    ['card_shubreeze'] = {        label = 'shubreeze',         weight = 10,    stack = false,    close = true,    description = 'shubreeze',},

    -- Resource: jim_g_trading_cards
    ['card_shusky'] = {           label = 'shusky',            weight = 10,    stack = false,    close = true,    description = 'shusky',},

    -- Resource: jim_g_trading_cards
    ['card_sobekflood'] = {       label = 'sobekflood',        weight = 10,    stack = false,    close = true,    description = 'sobekflood',},

    -- Resource: jim_g_trading_cards
    ['card_sobekhunt'] = {        label = 'sobekhunt',         weight = 10,    stack = false,    close = true,    description = 'sobekhunt',},

    -- Resource: jim_g_trading_cards
    ['card_sobekjaw_predator'] = {label = 'sobekjaw predator', weight = 10,    stack = false,    close = true,    description = 'sobekjaw predator',},

    -- Resource: jim_g_trading_cards
    ['card_sopduguardian'] = {    label = 'sopduguardian',     weight = 10,    stack = false,    close = true,    description = 'sopduguardian',},

    -- Resource: jim_g_trading_cards
    ['card_sopduspear'] = {       label = 'sopduspear',        weight = 10,    stack = false,    close = true,    description = 'sopduspear',},

    -- Resource: jim_g_trading_cards
    ['card_sopduspire'] = {       label = 'sopduspire',        weight = 10,    stack = false,    close = true,    description = 'sopduspire',},

    -- Resource: jim_g_trading_cards
    ['card_sphinx_guard'] = {     label = 'sphinx guard',      weight = 10,    stack = false,    close = true,    description = 'sphinx guard',},

    -- Resource: jim_g_trading_cards
    ['card_sphinxriddle'] = {     label = 'sphinxriddle',      weight = 10,    stack = false,    close = true,    description = 'sphinxriddle',},

    -- Resource: jim_g_trading_cards
    ['card_sphinxrune'] = {       label = 'sphinxrune',        weight = 10,    stack = false,    close = true,    description = 'sphinxrune',},

    -- Resource: jim_g_trading_cards
    ['card_taweret_protector'] = {label = 'taweret protector', weight = 10,    stack = false,    close = true,    description = 'taweret protector',},

    -- Resource: jim_g_trading_cards
    ['card_tefnut_moisture'] = {  label = 'tefnut moisture',   weight = 10,    stack = false,    close = true,    description = 'tefnut moisture',},

    -- Resource: jim_g_trading_cards
    ['card_tefnutdrop'] = {       label = 'tefnutdrop',        weight = 10,    stack = false,    close = true,    description = 'tefnutdrop',},

    -- Resource: jim_g_trading_cards
    ['card_thoth_scribe'] = {     label = 'thoth scribe',      weight = 10,    stack = false,    close = true,    description = 'thoth scribe',},

    -- Resource: jim_g_trading_cards
    ['card_thothscribe'] = {      label = 'thothscribe',       weight = 10,    stack = false,    close = true,    description = 'thothscribe',},

    -- Resource: jim_g_trading_cards
    ['card_thothwisdom_keeper'] = {label = 'thothwisdom keeper', weight = 10,  stack = false,    close = true,    description = 'thothwisdom keeper',},

    -- Resource: jim_g_trading_cards
    ['card_wadjet_protector'] = { label = 'wadjet protector',  weight = 10,    stack = false,    close = true,    description = 'wadjet protector',},

    -- Resource: jim_g_trading_cards
    ['card_wadjetcobra'] = {      label = 'wadjetcobra',       weight = 10,    stack = false,    close = true,    description = 'wadjetcobra',},

    -- Resource: jim_g_trading_cards
    ['card_wadjeteye'] = {        label = 'wadjeteye',         weight = 10,    stack = false,    close = true,    description = 'wadjeteye',},

    -- Resource: jim_g_trading_cards
    ['card_wadjetprotect'] = {    label = 'wadjetprotect',     weight = 10,    stack = false,    close = true,    description = 'wadjetprotect',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_bat'] = {         label = 'Bat',              weight = 10,    stack = false,    close = true,    description = 'Bat',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_crowbar'] = {     label = 'Crowbar',          weight = 10,    stack = false,    close = true,    description = 'Crowbar',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_flashlight'] = {  label = 'Flashlight',       weight = 10,    stack = false,    close = true,    description = 'Flashlight',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_golfclub'] = {    label = 'Golf Club',        weight = 10,    stack = false,    close = true,    description = 'Golf Club',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_hammer'] = {      label = 'Hammer',           weight = 10,    stack = false,    close = true,    description = 'Hammer',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_knife'] = {       label = 'Knife',            weight = 10,    stack = false,    close = true,    description = 'Knife',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_nightstick'] = {  label = 'Nightstick',       weight = 10,    stack = false,    close = true,    description = 'Nightstick',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_pistol'] = {      label = 'Pistol',           weight = 10,    stack = false,    close = true,    description = 'Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_poolcue'] = {     label = 'Pool Cue',         weight = 10,    stack = false,    close = true,    description = 'Pool Cue',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_wrench'] = {      label = 'Wrench',           weight = 10,    stack = false,    close = true,    description = 'Wrench',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_appisto'] = {     label = 'Appisto',          weight = 10,    stack = false,    close = true,    description = 'Appisto',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_bottle'] = {      label = 'Bottle',           weight = 10,    stack = false,    close = true,    description = 'Bottle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_combatpistol'] = { label = 'Combat Pistol',    weight = 10,    stack = false,    close = true,    description = 'Combat Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_dagger'] = {      label = 'Dagger',           weight = 10,    stack = false,    close = true,    description = 'Dagger',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_hatchet'] = {     label = 'Hatchet',          weight = 10,    stack = false,    close = true,    description = 'Hatchet',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_knuckle'] = {     label = 'Knuckle',          weight = 10,    stack = false,    close = true,    description = 'Knuckle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_machete'] = {     label = 'Machete',          weight = 10,    stack = false,    close = true,    description = 'Machete',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_microsmg'] = {    label = 'Micro SMG',        weight = 10,    stack = false,    close = true,    description = 'Micro SMG',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_pistol_mk2'] = {  label = 'Pistol Mk2',       weight = 10,    stack = false,    close = true,    description = 'Pistol Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_pumpshotgun'] = { label = 'Pump Shotgun',     weight = 10,    stack = false,    close = true,    description = 'Pump Shotgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_sawnoffshotgun'] = { label = 'Sawnoff Shotgun',  weight = 10,    stack = false,    close = true,    description = 'Sawnoff Shotgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_switchblade'] = { label = 'Switchblade',      weight = 10,    stack = false,    close = true,    description = 'Switchblade',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_snspistol'] = {   label = 'SNS Pistol',       weight = 10,    stack = false,    close = true,    description = 'SNS Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_assaultrifle'] = { label = 'Assault Rifle',    weight = 10,    stack = false,    close = true,    description = 'Assault Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_assaultsmg'] = {  label = 'Assault SMG',      weight = 10,    stack = false,    close = true,    description = 'Assault SMG',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_carbinerifle'] = { label = 'Carbine Rifle',    weight = 10,    stack = false,    close = true,    description = 'Carbine Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_compactrifle'] = { label = 'Compact Rifle',    weight = 10,    stack = false,    close = true,    description = 'Compact Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_grenade'] = {     label = 'Grenade',          weight = 10,    stack = false,    close = true,    description = 'Grenade',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_heavypistol'] = { label = 'Heavy Pistol',     weight = 10,    stack = false,    close = true,    description = 'Heavy Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_machinepistol'] = { label = 'Machine Pistol',   weight = 10,    stack = false,    close = true,    description = 'Machine Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_marksmanpistol'] = { label = 'Marksman Pistol',  weight = 10,    stack = false,    close = true,    description = 'Marksman Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_minismg'] = {     label = 'Mini SMG',         weight = 10,    stack = false,    close = true,    description = 'Mini SMG',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_pumpshotgun_mk2'] = { label = 'Pump Shotgun Mk2', weight = 10,    stack = false,    close = true,    description = 'Pump Shotgun Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_smg'] = {         label = 'SMG',              weight = 10,    stack = false,    close = true,    description = 'SMG',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_smokegrenade'] = { label = 'Smoke Grenade',    weight = 10,    stack = false,    close = true,    description = 'Smoke Grenade',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_vintagepistol'] = { label = 'Vintage Pistol',   weight = 10,    stack = false,    close = true,    description = 'Vintage Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_stickybomb'] = {  label = 'Sticky Bomb',      weight = 10,    stack = false,    close = true,    description = 'Sticky Bomb',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_advancedrifle'] = { label = 'Advanced Rifle',   weight = 10,    stack = false,    close = true,    description = 'Advanced Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_assaultshotgun'] = { label = 'Assault Shotgun',  weight = 10,    stack = false,    close = true,    description = 'Assault Shotgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_bullpuprifle'] = { label = 'Bullpup Rifle',    weight = 10,    stack = false,    close = true,    description = 'Bullpup Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_bullpupshotgun'] = { label = 'Bullpup Shotgun',  weight = 10,    stack = false,    close = true,    description = 'Bullpup Shotgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_combatpdw'] = {   label = 'Combat PDW',       weight = 10,    stack = false,    close = true,    description = 'Combat PDW',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_heavyrifle'] = {  label = 'Heavy Rifle',      weight = 10,    stack = false,    close = true,    description = 'Heavy Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_militaryrifle'] = { label = 'Military Rifle',   weight = 10,    stack = false,    close = true,    description = 'Military Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_proxmine'] = {    label = 'Prox Mine',        weight = 10,    stack = false,    close = true,    description = 'Prox Mine',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_revolver'] = {    label = 'Revolver',         weight = 10,    stack = false,    close = true,    description = 'Revolver',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_revolver_mk2'] = { label = 'Revolver Mk2',     weight = 10,    stack = false,    close = true,    description = 'Revolver Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_smg_mk2'] = {     label = 'SMG Mk2',          weight = 10,    stack = false,    close = true,    description = 'SMG Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_sniperrifle'] = { label = 'Sniper Rifle',     weight = 10,    stack = false,    close = true,    description = 'Sniper Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_specialcarbine'] = { label = 'Special Carbine',  weight = 10,    stack = false,    close = true,    description = 'Special Carbine',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_navnavy_revolver'] = { label = 'Navy Revolver',    weight = 10,    stack = false,    close = true,    description = 'Navy Revolver',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_pistolxm3'] = {   label = 'Pistol XM3',       weight = 10,    stack = false,    close = true,    description = 'Pistol XM3',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_specialcarbine_mk2'] = { label = 'Special Carbine Mk2', weight = 10,    stack = false,    close = true,    description = 'Special Carbine Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_tacticalrifle'] = { label = 'Tactical Rifle',   weight = 10,    stack = false,    close = true,    description = 'Tactical Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_tecpistol'] = {   label = 'Tec Pistol',       weight = 10,    stack = false,    close = true,    description = 'Tec Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_autoshotgun'] = { label = 'Auto Shotgun',     weight = 10,    stack = false,    close = true,    description = 'Auto Shotgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_combatmg'] = {    label = 'Combat MG',        weight = 10,    stack = false,    close = true,    description = 'Combat MG',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_combatmg_mk2'] = { label = 'Combat MG Mk2',    weight = 10,    stack = false,    close = true,    description = 'Combat MG Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_combatshotgun'] = { label = 'Combat Shotgun',   weight = 10,    stack = false,    close = true,    description = 'Combat Shotgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_doubleaction'] = { label = 'Double Action',    weight = 10,    stack = false,    close = true,    description = 'Double Action',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_gadgetpistol'] = { label = 'Gadget Pistol',    weight = 10,    stack = false,    close = true,    description = 'Gadget Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_heavyshotgun'] = { label = 'Heavy Shotgun',    weight = 10,    stack = false,    close = true,    description = 'Heavy Shotgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_heavysniper'] = { label = 'Heavy Sniper',     weight = 10,    stack = false,    close = true,    description = 'Heavy Sniper',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_marksmanrifle'] = { label = 'Marksman Rifle',   weight = 10,    stack = false,    close = true,    description = 'Marksman Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_marksmanrifle_mk2'] = { label = 'Marksman Rifle Mk2', weight = 10,    stack = false,    close = true,    description = 'Marksman Rifle Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_rpg'] = {         label = 'RPG',              weight = 10,    stack = false,    close = true,    description = 'RPG',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_compactlauncher'] = { label = 'Compact Launcher', weight = 10,    stack = false,    close = true,    description = 'Compact Launcher',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_raypistol'] = { label = 'raypistol', weight = 10,    stack = false,    close = true,    description = 'raypistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_emplauncher'] = { label = 'EMP Launcher',     weight = 10,    stack = false,    close = true,    description = 'EMP Launcher',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_firework'] = {    label = 'Firework',         weight = 10,    stack = false,    close = true,    description = 'Firework',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_grenadelauncher'] = { label = 'Grenade Launcher', weight = 10,    stack = false,    close = true,    description = 'Grenade Launcher',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_heavysniper_mk2'] = { label = 'Heavy Sniper Mk2', weight = 10,    stack = false,    close = true,    description = 'Heavy Sniper Mk2',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_hominglauncher'] = { label = 'Homing Launcher',  weight = 10,    stack = false,    close = true,    description = 'Homing Launcher',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_minigun'] = {     label = 'Minigun',          weight = 10,    stack = false,    close = true,    description = 'Minigun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_precisionrifle'] = { label = 'Precision Rifle',  weight = 10,    stack = false,    close = true,    description = 'Precision Rifle',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_railgun'] = {     label = 'Railgun',          weight = 10,    stack = false,    close = true,    description = 'Railgun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_raycarbine'] = {  label = 'Ray Carbine',      weight = 10,    stack = false,    close = true,    description = 'Ray Carbine',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_rayminigun'] = {  label = 'Ray Minigun',      weight = 10,    stack = false,    close = true,    description = 'Ray Minigun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_stungun'] = {     label = 'Stun Gun',         weight = 10,    stack = false,    close = true,    description = 'Stun Gun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_ball'] = {        label = 'Ball',             weight = 10,    stack = false,    close = true,    description = 'Ball',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_battleaxe'] = {   label = 'Battle Axe',       weight = 10,    stack = false,    close = true,    description = 'Battle Axe',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_candycane'] = {   label = 'Candy Cane',       weight = 10,    stack = false,    close = true,    description = 'Candy Cane',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_ceramicpistol'] = { label = 'Ceramic Pistol',   weight = 10,    stack = false,    close = true,    description = 'Ceramic Pistol',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_fireextinguisher'] = { label = 'Fire Extinguisher', weight = 10,    stack = false,    close = true,    description = 'Fire Extinguisher',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_flaregun'] = {    label = 'Flare Gun',        weight = 10,    stack = false,    close = true,    description = 'Flare Gun',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_gusenberg'] = {   label = 'Gusenberg',        weight = 10,    stack = false,    close = true,    description = 'Gusenberg',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_hazardcan'] = {   label = 'Hazard Can',       weight = 10,    stack = false,    close = true,    description = 'Hazard Can',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_molotov'] = {     label = 'Molotov',          weight = 10,    stack = false,    close = true,    description = 'Molotov',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_musket'] = {      label = 'Musket',           weight = 10,    stack = false,    close = true,    description = 'Musket',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_petrolcan'] = {   label = 'Petrol Can',       weight = 10,    stack = false,    close = true,    description = 'Petrol Can',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_pipebomb'] = {    label = 'Pipe Bomb',        weight = 10,    stack = false,    close = true,    description = 'Pipe Bomb',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_snowball'] = {    label = 'Snowball',         weight = 10,    stack = false,    close = true,    description = 'Snowball',},

    -- Resource: jim_g_trading_cards
    ['card_weapon_stone_hatchet'] = { label = 'Stone Hatchet',    weight = 10,    stack = false,    close = true,    description = 'Stone Hatchet',},

    -- Resource: jim_g_trading_cards
    ['card_panto'] = {             label = 'Panto',            weight = 10,    stack = false,    close = true,    description = 'Panto',},

    -- Resource: jim_g_trading_cards
    ['card_dilettante'] = {        label = 'Dilettante',       weight = 10,    stack = false,    close = true,    description = 'Dilettante',},

    -- Resource: jim_g_trading_cards
    ['card_asea'] = {              label = 'Asea',             weight = 10,    stack = false,    close = true,    description = 'Asea',},

    -- Resource: jim_g_trading_cards
    ['card_regina'] = {            label = 'Regina',           weight = 10,    stack = false,    close = true,    description = 'Regina',},

    -- Resource: jim_g_trading_cards
    ['card_journey'] = {           label = 'Journey',          weight = 10,    stack = false,    close = true,    description = 'Journey',},

    -- Resource: jim_g_trading_cards
    ['card_taco'] = {              label = 'Taco Van',         weight = 10,    stack = false,    close = true,    description = 'Taco Van',},

    -- Resource: jim_g_trading_cards
    ['card_boxville2'] = {         label = 'Post OP Boxville', weight = 10,    stack = false,    close = true,    description = 'Post OP Boxville',},

    -- Resource: jim_g_trading_cards
    ['card_feltzer2'] = {          label = 'Feltzer',          weight = 10,    stack = false,    close = true,    description = 'Feltzer',},

    -- Resource: jim_g_trading_cards
    ['card_oracle'] = {            label = 'Oracle',           weight = 10,    stack = false,    close = true,    description = 'Oracle',},

    -- Resource: jim_g_trading_cards
    ['card_sentinel2'] = {         label = 'Sentinel XS',      weight = 10,    stack = false,    close = true,    description = 'Sentinel XS',},

    -- Resource: jim_g_trading_cards
    ['card_blista2'] = {           label = 'Blista Compact',   weight = 10,    stack = false,    close = true,    description = 'Blista Compact',},

    -- Resource: jim_g_trading_cards
    ['card_issi2'] = {             label = 'Issi',             weight = 10,    stack = false,    close = true,    description = 'Issi',},

    -- Resource: jim_g_trading_cards
    ['card_prairie'] = {           label = 'Prairie',          weight = 10,    stack = false,    close = true,    description = 'Prairie',},

    -- Resource: jim_g_trading_cards
    ['card_ingot'] = {             label = 'Ingot',            weight = 10,    stack = false,    close = true,    description = 'Ingot',},

    -- Resource: jim_g_trading_cards
    ['card_stratum'] = {           label = 'Stratum',          weight = 10,    stack = false,    close = true,    description = 'Stratum',},

    -- Resource: jim_g_trading_cards
    ['card_premier'] = {           label = 'Premier',          weight = 10,    stack = false,    close = true,    description = 'Premier',},

    -- Resource: jim_g_trading_cards
    ['card_stanier'] = {           label = 'Stanier',          weight = 10,    stack = false,    close = true,    description = 'Stanier',},

    -- Resource: jim_g_trading_cards
    ['card_rhapsody'] = {          label = 'Rhapsody',         weight = 10,    stack = false,    close = true,    description = 'Rhapsody',},

    -- Resource: jim_g_trading_cards
    ['card_faggio'] = {            label = 'Faggio',           weight = 10,    stack = false,    close = true,    description = 'Faggio',},

    -- Resource: jim_g_trading_cards
    ['card_tractor'] = {           label = 'Tractor',          weight = 10,    stack = false,    close = true,    description = 'Tractor',},

    -- Resource: jim_g_trading_cards
    ['card_bati'] = {              label = 'Bati 801',         weight = 10,    stack = false,    close = true,    description = 'Bati 801',},

    -- Resource: jim_g_trading_cards
    ['card_akuma'] = {             label = 'Akuma',            weight = 10,    stack = false,    close = true,    description = 'Akuma',},

    -- Resource: jim_g_trading_cards
    ['card_hakuchou2'] = {         label = 'Hakuchou Drag',    weight = 10,    stack = false,    close = true,    description = 'Hakuchou Drag',},

    -- Resource: jim_g_trading_cards
    ['card_double'] = {            label = 'Double-T',         weight = 10,    stack = false,    close = true,    description = 'Double-T',},

    -- Resource: jim_g_trading_cards
    ['card_sanchez'] = {           label = 'Sanchez',          weight = 10,    stack = false,    close = true,    description = 'Sanchez',},

    -- Resource: jim_g_trading_cards
    ['card_manchez2'] = {          label = 'Manchez Scout',    weight = 10,    stack = false,    close = true,    description = 'Manchez Scout',},

    -- Resource: jim_g_trading_cards
    ['card_faggio3'] = {           label = 'Faggio Sport',     weight = 10,    stack = false,    close = true,    description = 'Faggio Sport',},

    -- Resource: jim_g_trading_cards
    ['card_faggio2'] = {           label = 'Faggio Mod',       weight = 10,    stack = false,    close = true,    description = 'Faggio Mod',},

    -- Resource: jim_g_trading_cards
    ['card_bf400'] = {             label = 'BF400',            weight = 10,    stack = false,    close = true,    description = 'BF400',},

    -- Resource: jim_g_trading_cards
    ['card_shinobi'] = {           label = 'Shinobi',          weight = 10,    stack = false,    close = true,    description = 'Shinobi',},

    -- Resource: jim_g_trading_cards
    ['card_vindicator'] = {        label = 'Vindicator',       weight = 10,    stack = false,    close = true,    description = 'Vindicator',},

    -- Resource: jim_g_trading_cards
    ['card_gargoyle'] = {          label = 'Gargoyle',         weight = 10,    stack = false,    close = true,    description = 'Gargoyle',},

    -- Resource: jim_g_trading_cards
    ['card_chimera'] = {           label = 'Chimera',          weight = 10,    stack = false,    close = true,    description = 'Chimera',},

    -- Resource: jim_g_trading_cards
    ['card_bmx'] = {               label = 'BMX',              weight = 10,    stack = false,    close = true,    description = 'BMX',},

    -- Resource: jim_g_trading_cards
    ['card_sandking'] = {          label = 'Sandking XL',      weight = 10,    stack = false,    close = true,    description = 'Sandking XL',},

    -- Resource: jim_g_trading_cards
    ['card_dubsta3'] = {           label = 'Dubsta 6x6',       weight = 10,    stack = false,    close = true,    description = 'Dubsta 6x6',},

    -- Resource: jim_g_trading_cards
    ['card_kamacho'] = {           label = 'Kamacho',          weight = 10,    stack = false,    close = true,    description = 'Kamacho',},

    -- Resource: jim_g_trading_cards
    ['card_draugur'] = {           label = 'Draugur',          weight = 10,    stack = false,    close = true,    description = 'Draugur',},

    -- Resource: jim_g_trading_cards
    ['card_insurgent'] = {         label = 'Insurgent',        weight = 10,    stack = false,    close = true,    description = 'Insurgent',},

    -- Resource: jim_g_trading_cards
    ['card_nightshark'] = {        label = 'Nightshark',       weight = 10,    stack = false,    close = true,    description = 'Nightshark',},

    -- Resource: jim_g_trading_cards
    ['card_toros'] = {             label = 'Toros',            weight = 10,    stack = false,    close = true,    description = 'Toros',},

    -- Resource: jim_g_trading_cards
    ['card_baller7'] = {           label = 'Baller ST',        weight = 10,    stack = false,    close = true,    description = 'Baller ST',},

    -- Resource: jim_g_trading_cards
    ['card_rebel'] = {             label = 'Rebel',            weight = 10,    stack = false,    close = true,    description = 'Rebel',},

    -- Resource: jim_g_trading_cards
    ['card_bifta'] = {             label = 'Bifta',            weight = 10,    stack = false,    close = true,    description = 'Bifta',},

    -- Resource: jim_g_trading_cards
    ['card_freecrawler'] = {       label = 'Freecrawler',      weight = 10,    stack = false,    close = true,    description = 'Freecrawler',},

    -- Resource: jim_g_trading_cards
    ['card_patriot3'] = {          label = 'Patriot Mil-Spec', weight = 10,    stack = false,    close = true,    description = 'Patriot Mil-Spec',},

    -- Resource: jim_g_trading_cards
    ['card_granger2'] = {          label = 'Granger 3600LX',   weight = 10,    stack = false,    close = true,    description = 'Granger 3600LX',},

    -- Resource: jim_g_trading_cards
    ['card_marshall'] = {          label = 'Marshall',         weight = 10,    stack = false,    close = true,    description = 'Marshall',},

    -- Resource: jim_g_trading_cards
    ['card_dominator'] = {         label = 'Dominator',        weight = 10,    stack = false,    close = true,    description = 'Dominator',},

    -- Resource: jim_g_trading_cards
    ['card_gauntlet4'] = {         label = 'Gauntlet Hellfire', weight = 10,   stack = false,    close = true,    description = 'Gauntlet Hellfire',},

    -- Resource: jim_g_trading_cards
    ['card_deathbike'] = {         label = 'Duke O Death',    weight = 10,    stack = false,    close = true,    description = 'Duke O Death',},

    -- Resource: jim_g_trading_cards
    ['card_dukes'] = {             label = 'Dukes',            weight = 10,    stack = false,    close = true,    description = 'Dukes',},

    -- Resource: jim_g_trading_cards
    ['card_buccaneer'] = {         label = 'Buccaneer',        weight = 10,    stack = false,    close = true,    description = 'Buccaneer',},

    -- Resource: jim_g_trading_cards
    ['card_tornado'] = {           label = 'Tornado',          weight = 10,    stack = false,    close = true,    description = 'Tornado',},

    -- Resource: jim_g_trading_cards
    ['card_voodoo'] = {            label = 'Voodoo',           weight = 10,    stack = false,    close = true,    description = 'Voodoo',},

    -- Resource: jim_g_trading_cards
    ['card_hermes'] = {            label = 'Hermes',           weight = 10,    stack = false,    close = true,    description = 'Hermes',},

    -- Resource: jim_g_trading_cards
    ['card_mamba'] = {             label = 'Mamba',            weight = 10,    stack = false,    close = true,    description = 'Mamba',},

    -- Resource: jim_g_trading_cards
    ['card_ztype'] = {             label = 'Z-Type',           weight = 10,    stack = false,    close = true,    description = 'Z-Type',},

    -- Resource: jim_g_trading_cards
    ['card_monroe'] = {            label = 'Monroe',           weight = 10,    stack = false,    close = true,    description = 'Monroe',},

    -- Resource: jim_g_trading_cards
    ['card_peyote'] = {            label = 'Peyote',           weight = 10,    stack = false,    close = true,    description = 'Peyote',},

    -- Resource: jim_g_trading_cards
    ['card_coquette2'] = {         label = 'Coquette Classic', weight = 10,    stack = false,    close = true,    description = 'Coquette Classic',},

    -- Resource: jim_g_trading_cards
    ['card_elegy2'] = {            label = 'Elegy RH8',        weight = 10,    stack = false,    close = true,    description = 'Elegy RH8',},

    -- Resource: jim_g_trading_cards
    ['card_elegy'] = {             label = 'Elegy Retro Custom', weight = 10,  stack = false,    close = true,    description = 'Elegy Retro Custom',},

    -- Resource: jim_g_trading_cards
    ['card_sultanrs'] = {          label = 'Sultan RS',        weight = 10,    stack = false,    close = true,    description = 'Sultan RS',},

    -- Resource: jim_g_trading_cards
    ['card_banshee2'] = {          label = 'Banshee 900R',     weight = 10,    stack = false,    close = true,    description = 'Banshee 900R',},

    -- Resource: jim_g_trading_cards
    ['card_jester4'] = {           label = 'Jester RR',        weight = 10,    stack = false,    close = true,    description = 'Jester RR',},

    -- Resource: jim_g_trading_cards
    ['card_calico'] = {            label = 'Calico GTF',       weight = 10,    stack = false,    close = true,    description = 'Calico GTF',},

    -- Resource: jim_g_trading_cards
    ['card_futo2'] = {             label = 'Futo GTX',         weight = 10,    stack = false,    close = true,    description = 'Futo GTX',},

    -- Resource: jim_g_trading_cards
    ['card_dominator7'] = {        label = 'Dominator ASP',    weight = 10,    stack = false,    close = true,    description = 'Dominator ASP',},

    -- Resource: jim_g_trading_cards
    ['card_previon'] = {           label = 'Karin Previon',    weight = 10,    stack = false,    close = true,    description = 'Karin Previon',},

    -- Resource: jim_g_trading_cards
    ['card_remus'] = {             label = 'Annis Remus',      weight = 10,    stack = false,    close = true,    description = 'Annis Remus',},

    -- Resource: jim_g_trading_cards
    ['card_rt3000'] = {            label = 'RT3000',           weight = 10,    stack = false,    close = true,    description = 'RT3000',},

    -- Resource: jim_g_trading_cards
    ['card_zr350'] = {             label = 'ZR350',            weight = 10,    stack = false,    close = true,    description = 'ZR350',},

    -- Resource: jim_g_trading_cards
    ['card_penumbra2'] = {         label = 'Penumbra FF',      weight = 10,    stack = false,    close = true,    description = 'Penumbra FF',},

    -- Resource: jim_g_trading_cards
    ['card_comet7'] = {            label = 'Comet S2',         weight = 10,    stack = false,    close = true,    description = 'Comet S2',},

    -- Resource: jim_g_trading_cards
    ['card_kuruma2'] = {           label = 'Kuruma',           weight = 10,    stack = false,    close = true,    description = 'Kuruma',},

    -- Resource: jim_g_trading_cards
    ['card_adder'] = {             label = 'Adder',            weight = 10,    stack = false,    close = true,    description = 'Adder',},

    -- Resource: jim_g_trading_cards
    ['card_zentorno'] = {          label = 'Zentorno',         weight = 10,    stack = false,    close = true,    description = 'Zentorno',},

    -- Resource: jim_g_trading_cards
    ['card_t20'] = {               label = 'T20',              weight = 10,    stack = false,    close = true,    description = 'T20',},

    -- Resource: jim_g_trading_cards
    ['card_osiris'] = {            label = 'Osiris',           weight = 10,    stack = false,    close = true,    description = 'Osiris',},

    -- Resource: jim_g_trading_cards
    ['card_emerus'] = {            label = 'Emerus',           weight = 10,    stack = false,    close = true,    description = 'Emerus',},

    -- Resource: jim_g_trading_cards
    ['card_krieger'] = {           label = 'Krieger',          weight = 10,    stack = false,    close = true,    description = 'Krieger',},

    -- Resource: jim_g_trading_cards
    ['card_italigto'] = {          label = 'Itali GTO',        weight = 10,    stack = false,    close = true,    description = 'Itali GTO',},

    -- Resource: jim_g_trading_cards
    ['card_pariah'] = {            label = 'Pariah',           weight = 10,    stack = false,    close = true,    description = 'Pariah',},

    -- Resource: jim_g_trading_cards
    ['card_turismor'] = {          label = 'Turismo R',        weight = 10,    stack = false,    close = true,    description = 'Turismo R',},

    -- Resource: jim_g_trading_cards
    ['card_infernus'] = {          label = 'Infernus',         weight = 10,    stack = false,    close = true,    description = 'Infernus',},

    -- Resource: jim_g_trading_cards
    ['card_cheetah'] = {           label = 'Cheetah',          weight = 10,    stack = false,    close = true,    description = 'Cheetah',},

    -- Resource: jim_g_trading_cards
    ['card_entityxf'] = {          label = 'Entity XF',        weight = 10,    stack = false,    close = true,    description = 'Entity XF',},

    -- Resource: jim_g_trading_cards
    ['card_vagner'] = {            label = 'Vagner',           weight = 10,    stack = false,    close = true,    description = 'Vagner',},

    -- Resource: jim_g_trading_cards
    ['card_tezeract'] = {          label = 'Tezeract',         weight = 10,    stack = false,    close = true,    description = 'Tezeract',},

    -- Resource: jim_g_trading_cards
    ['card_thrax'] = {             label = 'Thrax',            weight = 10,    stack = false,    close = true,    description = 'Thrax',},

    -- Resource: jim_g_trading_cards
    ['card_ignus'] = {             label = 'Ignus',            weight = 10,    stack = false,    close = true,    description = 'Ignus',},

    -- Resource: jim_g_trading_cards
    ['card_champion'] = {          label = 'Caldwell',         weight = 10,    stack = false,    close = true,    description = 'Caldwell',},

    -- Resource: jim_g_trading_cards
    ['card_nero2'] = {             label = 'Nero Custom',      weight = 10,    stack = false,    close = true,    description = 'Nero Custom',},

    -- Resource: jim_g_trading_cards
    ['card_xa21'] = {              label = 'XA-21',            weight = 10,    stack = false,    close = true,    description = 'XA-21',},

    -- Resource: jim_g_trading_cards
    ['card_tyrant'] = {            label = 'Tyrant',           weight = 10,    stack = false,    close = true,    description = 'Tyrant',},

    -- Resource: jim_g_trading_cards
    ['card_entity3'] = {           label = 'Entity MT',        weight = 10,    stack = false,    close = true,    description = 'Entity MT',},

    -- Resource: jim_g_trading_cards
    ['card_furia'] = {             label = 'Furia',            weight = 10,    stack = false,    close = true,    description = 'Furia',},

    -- Resource: jim_g_trading_cards
    ['card_gp1'] = {               label = 'GP1',              weight = 10,    stack = false,    close = true,    description = 'GP1',},

    -- Resource: jim_g_trading_cards
    ['card_sultan3'] = {           label = 'Sultan Classic',   weight = 10,    stack = false,    close = true,    description = 'Sultan Classic',},

    -- Resource: jim_g_trading_cards
    ['card_kanjosj'] = {           label = 'Kanjo SJ',         weight = 10,    stack = false,    close = true,    description = 'Kanjo SJ',},

    -- Resource: jim_g_trading_cards
    ['card_penumbra'] = {          label = 'Penumbra',         weight = 10,    stack = false,    close = true,    description = 'Penumbra',},

    -- Resource: jim_g_trading_cards
    ['card_dominator8'] = {        label = 'Dominator GTT',    weight = 10,    stack = false,    close = true,    description = 'Dominator GTT',},

    -- Resource: jim_g_trading_cards
    ['card_vigero2'] = {           label = 'Vigero ZX',        weight = 10,    stack = false,    close = true,    description = 'Vigero ZX',},

    -- Resource: jim_g_trading_cards
    ['card_manana'] = {            label = 'Manana',           weight = 10,    stack = false,    close = true,    description = 'Manana',},

    -- Resource: jim_g_trading_cards
    ['card_terminus'] = {          label = 'Terminus',         weight = 10,    stack = false,    close = true,    description = 'Terminus',},

    -- Resource: jim_g_trading_cards
    ['card_dorado'] = {            label = 'Dorado',           weight = 10,    stack = false,    close = true,    description = 'Dorado',},

    -- Resource: jim_g_trading_cards
    ['card_benson'] = {            label = 'Benson',           weight = 10,    stack = false,    close = true,    description = 'Benson',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_m_marine_02'] = {   label = 'Marine',           weight = 10,    stack = false,    close = true,    description = 'Marine',},

    -- Resource: jim_g_trading_cards
    ['card_ig_englishdave'] = {    label = 'English Dave',     weight = 10,    stack = false,    close = true,    description = 'English Dave',},

    -- Resource: jim_g_trading_cards
    ['card_g_m_m_mexboss_02'] = {  label = 'Cartel Boss',      weight = 10,    stack = false,    close = true,    description = 'Cartel Boss',},

    -- Resource: jim_g_trading_cards
    ['card_ig_avon'] = {           label = 'Avon Hertz',       weight = 10,    stack = false,    close = true,    description = 'Avon Hertz',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_clown_01'] = {    label = 'Cliffford',        weight = 10,    stack = false,    close = true,    description = 'Cliffford',},

    -- Resource: jim_g_trading_cards
    ['card_csb_bogdan'] = {        label = 'Bogdan',           weight = 10,    stack = false,    close = true,    description = 'Bogdan',},

    -- Resource: jim_g_trading_cards
    ['card_u_f_y_lauren'] = {      label = 'Lauren',           weight = 10,    stack = false,    close = true,    description = 'Lauren',},

    -- Resource: jim_g_trading_cards
    ['card_u_m_y_party_01'] = {    label = 'Partygoer',        weight = 10,    stack = false,    close = true,    description = 'Partygoer',},

    -- Resource: jim_g_trading_cards
    ['card_u_f_y_bikerchic'] = {   label = 'Biker Chic',       weight = 10,    stack = false,    close = true,    description = 'Biker Chic',},

    -- Resource: jim_g_trading_cards
    ['card_a_m_y_methhead_01'] = { label = 'Meth Head',        weight = 10,    stack = false,    close = true,    description = 'Meth Head',},

    -- Resource: jim_g_trading_cards
    ['card_u_f_y_beth'] = {        label = 'Beth',             weight = 10,    stack = false,    close = true,    description = 'Beth',},

    -- Resource: jim_g_trading_cards
    ['card_ig_sol'] = {            label = 'Sol',              weight = 10,    stack = false,    close = true,    description = 'Sol',},

    -- Resource: jim_g_trading_cards
    ['card_ig_tonyprince'] = {     label = 'Tony Prince',      weight = 10,    stack = false,    close = true,    description = 'Tony Prince',},

    -- Resource: jim_g_trading_cards
    ['card_ig_lazlow_2'] = {       label = 'Lazlow (Online)',  weight = 10,    stack = false,    close = true,    description = 'Lazlow (Online)',},

    -- Resource: jim_g_trading_cards
    ['card_ig_ortega'] = {         label = 'Ortega',           weight = 10,    stack = false,    close = true,    description = 'Ortega',},

    -- Resource: jim_g_trading_cards
    ['card_ig_dom'] = {            label = 'Dom Beasley',      weight = 10,    stack = false,    close = true,    description = 'Dom Beasley',},

    -- Resource: jim_g_trading_cards
    ['card_ig_maryann'] = {        label = 'Mary-ann Quinn',   weight = 10,    stack = false,    close = true,    description = 'Mary-ann Quinn',},

    -- Resource: jim_g_trading_cards
    ['card_ig_barry'] = {          label = 'Barry',            weight = 10,    stack = false,    close = true,    description = 'Barry',},

    -- Resource: jim_g_trading_cards
    ['card_ig_beverly'] = {        label = 'Beverly Felton',   weight = 10,    stack = false,    close = true,    description = 'Beverly Felton',},

    -- Resource: jim_g_trading_cards
    ['card_ig_dreyfuss'] = {       label = 'Dreyfuss',         weight = 10,    stack = false,    close = true,    description = 'Dreyfuss',},

    -- Resource: jim_g_trading_cards
    ['card_ig_abigail'] = {        label = 'Abigail Mathers',  weight = 10,    stack = false,    close = true,    description = 'Abigail Mathers',},

    -- Resource: jim_g_trading_cards
    ['card_ig_josh'] = {           label = 'Josh Bernstein',   weight = 10,    stack = false,    close = true,    description = 'Josh Bernstein',},

    -- Resource: jim_g_trading_cards
    ['card_ig_nigel'] = {          label = 'Nigel',            weight = 10,    stack = false,    close = true,    description = 'Nigel',},

    -- Resource: jim_g_trading_cards
    ['card_ig_mrs_thornhill'] = {  label = 'Mrs. Thornhill',   weight = 10,    stack = false,    close = true,    description = 'Mrs. Thornhill',},

    -- Resource: jim_g_trading_cards
    ['card_ig_maude'] = {          label = 'Maude Eccles',     weight = 10,    stack = false,    close = true,    description = 'Maude Eccles',},

    -- Resource: jim_g_trading_cards
    ['card_ig_cletus'] = {         label = 'Cletus Ewing',     weight = 10,    stack = false,    close = true,    description = 'Cletus Ewing',},

    -- Resource: jim_g_trading_cards
    ['card_ig_omega'] = {          label = 'Omega',            weight = 10,    stack = false,    close = true,    description = 'Omega',},

    -- Resource: jim_g_trading_cards
    ['card_ig_tonya'] = {          label = 'Tonya Wiggins',    weight = 10,    stack = false,    close = true,    description = 'Tonya Wiggins',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_m_lifeinvad_01'] = { label = 'JB Schaller',     weight = 10,    stack = false,    close = true,    description = 'JB Schaller',},

    -- Resource: jim_g_trading_cards
    ['card_ig_hao'] = {            label = 'Hao',              weight = 10,    stack = false,    close = true,    description = 'Hao',},

    -- Resource: jim_g_trading_cards
    ['card_ig_roccopelosi'] = {    label = 'Rocco Pelosi',     weight = 10,    stack = false,    close = true,    description = 'Rocco Pelosi',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_m_highsec_01_2'] = { label = 'Gianni',          weight = 10,    stack = false,    close = true,    description = 'Gianni',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_construct_01'] = { label = 'Eddie Tow',       weight = 10,    stack = false,    close = true,    description = 'Eddie Tow',},

    -- Resource: jim_g_trading_cards
    ['card_ig_talina'] = {         label = 'Taliana Martinez', weight = 10,    stack = false,    close = true,    description = 'Taliana Martinez',},

    -- Resource: jim_g_trading_cards
    ['card_ig_paige'] = {          label = 'Paige Harris',     weight = 10,    stack = false,    close = true,    description = 'Paige Harris',},

    -- Resource: jim_g_trading_cards
    ['card_u_m_y_staggrm_01'] = {  label = 'Christian Feltz',  weight = 10,    stack = false,    close = true,    description = 'Christian Feltz',},

    -- Resource: jim_g_trading_cards
    ['card_ig_lestercrest'] = {    label = 'Lester Crest',     weight = 10,    stack = false,    close = true,    description = 'Lester Crest',},

    -- Resource: jim_g_trading_cards
    ['card_ig_lazlow'] = {         label = 'Lazlow Jones',     weight = 10,    stack = false,    close = true,    description = 'Lazlow Jones',},

    -- Resource: jim_g_trading_cards
    ['card_ig_solomon'] = {        label = 'Solomon Richards', weight = 10,    stack = false,    close = true,    description = 'Solomon Richards',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_devinsec_01'] = { label = 'Kyle Chavis',      weight = 10,    stack = false,    close = true,    description = 'Kyle Chavis',},

    -- Resource: jim_g_trading_cards
    ['card_ig_drfriedlander'] = {  label = 'Dr. Isiah Friedlander', weight = 10, stack = false, close = true, description = 'Dr. Isiah Friedlander',},

    -- Resource: jim_g_trading_cards
    ['card_ig_oneil'] = {          label = 'Elwood O Neil',    weight = 10,    stack = false,    close = true,    description = 'Elwood O Neil',},

    -- Resource: jim_g_trading_cards
    ['card_a_m_m_hillbilly_01'] = { label = 'Wynel O Neil',    weight = 10,    stack = false,    close = true,    description = 'Wynel O Neil',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_m_highsec_01'] = {  label = 'Gustavo Mota',     weight = 10,    stack = false,    close = true,    description = 'Gustavo Mota',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_m_highsec_02'] = {  label = 'Karl Abolaji',     weight = 10,    stack = false,    close = true,    description = 'Karl Abolaji',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_m_fiboffice_02'] = { label = 'Norm Richards',   weight = 10,    stack = false,    close = true,    description = 'Norm Richards',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_blackops_01'] = { label = 'Daryl Johns',      weight = 10,    stack = false,    close = true,    description = 'Daryl Johns',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_blackops_02'] = { label = 'Hugh Welsh',       weight = 10,    stack = false,    close = true,    description = 'Hugh Welsh',},

    -- Resource: jim_g_trading_cards
    ['card_ig_chef'] = {           label = 'Chef',             weight = 10,    stack = false,    close = true,    description = 'Chef',},

    -- Resource: jim_g_trading_cards
    ['card_hc_gunman'] = {         label = 'Heist Gunman',     weight = 10,    stack = false,    close = true,    description = 'Heist Gunman',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_xmech_01'] = {    label = 'Mechanic',         weight = 10,    stack = false,    close = true,    description = 'Mechanic',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_waretech_01'] = { label = 'Warehouse Tech',   weight = 10,    stack = false,    close = true,    description = 'Warehouse Tech',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_waiter_01'] = {   label = 'Karim Denz',       weight = 10,    stack = false,    close = true,    description = 'Karim Denz',},

    -- Resource: jim_g_trading_cards
    ['card_g_m_m_mexboss_01'] = {  label = 'Javier Madrazo',   weight = 10,    stack = false,    close = true,    description = 'Javier Madrazo',},

    -- Resource: jim_g_trading_cards
    ['card_ig_stretch'] = {        label = 'Stretch',          weight = 10,    stack = false,    close = true,    description = 'Stretch',},

    -- Resource: jim_g_trading_cards
    ['card_ig_ballasog'] = {       label = 'D',                weight = 10,    stack = false,    close = true,    description = 'D',},

    -- Resource: jim_g_trading_cards
    ['card_ig_jay_norris'] = {     label = 'Jay Norris',       weight = 10,    stack = false,    close = true,    description = 'Jay Norris',},

    -- Resource: jim_g_trading_cards
    ['card_u_m_y_antonb'] = {      label = 'Anton Beaudelaire',weight = 10,    stack = false,    close = true,    description = 'Anton Beaudelaire',},

    -- Resource: jim_g_trading_cards
    ['card_ig_davenorton'] = {     label = 'Dave Norton',      weight = 10,    stack = false,    close = true,    description = 'Dave Norton',},

    -- Resource: jim_g_trading_cards
    ['card_ig_stevehains'] = {     label = 'Steve Haines',     weight = 10,    stack = false,    close = true,    description = 'Steve Haines',},

    -- Resource: jim_g_trading_cards
    ['card_ig_andreas'] = {        label = 'Andreas Sanchez',  weight = 10,    stack = false,    close = true,    description = 'Andreas Sanchez',},

    -- Resource: jim_g_trading_cards
    ['card_ig_devin'] = {          label = 'Devin Weston',     weight = 10,    stack = false,    close = true,    description = 'Devin Weston',},

    -- Resource: jim_g_trading_cards
    ['card_ig_molly'] = {          label = 'Molly Schultz',    weight = 10,    stack = false,    close = true,    description = 'Molly Schultz',},

    -- Resource: jim_g_trading_cards
    ['card_ig_karen_daniels'] = {  label = 'Karen Daniels',    weight = 10,    stack = false,    close = true,    description = 'Karen Daniels',},

    -- Resource: jim_g_trading_cards
    ['card_ig_fbisuit_01'] = {     label = 'FIB Suit',         weight = 10,    stack = false,    close = true,    description = 'FIB Suit',},

    -- Resource: jim_g_trading_cards
    ['card_ig_patricia'] = {       label = 'Patricia Madrazo', weight = 10,    stack = false,    close = true,    description = 'Patricia Madrazo',},

    -- Resource: jim_g_trading_cards
    ['card_ig_chengsr'] = {        label = 'Wei Cheng',        weight = 10,    stack = false,    close = true,    description = 'Wei Cheng',},

    -- Resource: jim_g_trading_cards
    ['card_ig_taocheng'] = {       label = 'Tao Cheng',        weight = 10,    stack = false,    close = true,    description = 'Tao Cheng',},

    -- Resource: jim_g_trading_cards
    ['card_player_zero'] = {       label = 'Michael De Santa', weight = 10,    stack = false,    close = true,    description = 'Michael De Santa',},

    -- Resource: jim_g_trading_cards
    ['card_player_one'] = {        label = 'Franklin Clinton', weight = 10,    stack = false,    close = true,    description = 'Franklin Clinton',},

    -- Resource: jim_g_trading_cards
    ['card_player_two'] = {        label = 'Trevor Philips',   weight = 10,    stack = false,    close = true,    description = 'Trevor Philips',},

    -- Resource: jim_g_trading_cards
    ['card_ig_amandatownley'] = {  label = 'Amanda De Santa',  weight = 10,    stack = false,    close = true,    description = 'Amanda De Santa',},

    -- Resource: jim_g_trading_cards
    ['card_ig_jimmydisanto'] = {   label = 'Jimmy De Santa',   weight = 10,    stack = false,    close = true,    description = 'Jimmy De Santa',},

    -- Resource: jim_g_trading_cards
    ['card_ig_tracydisanto'] = {   label = 'Tracey De Santa',  weight = 10,    stack = false,    close = true,    description = 'Tracey De Santa',},

    -- Resource: jim_g_trading_cards
    ['card_ig_lamardavis'] = {     label = 'Lamar Davis',      weight = 10,    stack = false,    close = true,    description = 'Lamar Davis',},

    -- Resource: jim_g_trading_cards
    ['card_a_c_chop'] = {          label = 'Chop',             weight = 10,    stack = false,    close = true,    description = 'Chop',},

    -- Resource: jim_g_trading_cards
    ['card_ig_nervousron'] = {     label = 'Ron Jakowski',     weight = 10,    stack = false,    close = true,    description = 'Ron Jakowski',},

    -- Resource: jim_g_trading_cards
    ['card_ig_wade'] = {           label = 'Wade Hebert',      weight = 10,    stack = false,    close = true,    description = 'Wade Hebert',},

    -- Resource: jim_g_trading_cards
    ['card_ig_siemonyetarian'] = { label = 'Simeon Yetarian',  weight = 10,    stack = false,    close = true,    description = 'Simeon Yetarian',},

    -- Resource: jim_g_trading_cards
    ['card_ig_chrisformage'] = {   label = 'Cris Formage',     weight = 10,    stack = false,    close = true,    description = 'Cris Formage',},

    -- Resource: jim_g_trading_cards
    ['card_ig_jimmyboston'] = {    label = 'Jimmy Boston',     weight = 10,    stack = false,    close = true,    description = 'Jimmy Boston',},

    -- Resource: jim_g_trading_cards
    ['card_ig_marnie'] = {         label = 'Marnie Allen',     weight = 10,    stack = false,    close = true,    description = 'Marnie Allen',},

    -- Resource: jim_g_trading_cards
    ['card_u_m_y_baygor'] = {      label = 'Baygor',           weight = 10,    stack = false,    close = true,    description = 'Baygor',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_mime'] = {        label = 'The Mime',         weight = 10,    stack = false,    close = true,    description = 'The Mime',},

    -- Resource: jim_g_trading_cards
    ['card_u_m_y_pogo_01'] = {     label = 'Pogo the Monkey',  weight = 10,    stack = false,    close = true,    description = 'Pogo the Monkey',},

    -- Resource: jim_g_trading_cards
    ['card_u_m_y_imporage'] = {    label = 'Impotent Rage',    weight = 10,    stack = false,    close = true,    description = 'Impotent Rage',},

    -- Resource: jim_g_trading_cards
    ['card_u_f_y_princess'] = {    label = 'Princess Robot',   weight = 10,    stack = false,    close = true,    description = 'Princess Robot',},

    -- Resource: jim_g_trading_cards
    ['card_u_m_y_rsranger_01'] = { label = 'Space Ranger',     weight = 10,    stack = false,    close = true,    description = 'Space Ranger',},

    -- Resource: jim_g_trading_cards
    ['card_u_f_y_hotposh_01'] = {  label = 'Hot Posh',         weight = 10,    stack = false,    close = true,    description = 'Hot Posh',},

    -- Resource: jim_g_trading_cards
    ['card_ig_benny'] = {          label = 'Benny',            weight = 10,    stack = false,    close = true,    description = 'Benny',},

    -- Resource: jim_g_trading_cards
    ['card_u_f_y_dancelthr_01'] = { label = 'Raver',           weight = 10,    stack = false,    close = true,    description = 'Raver',},

    -- Resource: jim_g_trading_cards
    ['card_ig_vincent'] = {        label = 'Vincent',          weight = 10,    stack = false,    close = true,    description = 'Vincent',},

    -- Resource: jim_g_trading_cards
    ['card_s_m_y_valet_01'] = {    label = 'Felipe',           weight = 10,    stack = false,    close = true,    description = 'Felipe',},

    -- Resource: jim_g_trading_cards
    ['card_los_santos_customs_burton'] = {  label = 'Los Santos Customs',                  weight = 10,    stack = false,    close = true,    description = 'Los Santos Customs Burton',},

    -- Resource: jim_g_trading_cards
    ['card_supermarket_24_7'] = {           label = '24/7 Supermarket',                    weight = 10,    stack = false,    close = true,    description = '24/7 Supermarket',},

    -- Resource: jim_g_trading_cards
    ['card_ltd_gasoline'] = {               label = 'LTD Gasoline',                        weight = 10,    stack = false,    close = true,    description = 'LTD Gasoline',},

    -- Resource: jim_g_trading_cards
    ['card_ammu_nation_downtown'] = {       label = 'Ammu-Nation',                         weight = 10,    stack = false,    close = true,    description = 'Ammu-Nation Downtown',},

    -- Resource: jim_g_trading_cards
    ['card_fleeca_bank'] = {                label = 'Fleeca Bank',                         weight = 10,    stack = false,    close = true,    description = 'Fleeca Bank',},

    -- Resource: jim_g_trading_cards
    ['card_vanilla_unicorn'] = {            label = 'Vanilla Unicorn',                     weight = 10,    stack = false,    close = true,    description = 'Vanilla Unicorn',},

    -- Resource: jim_g_trading_cards
    ['card_bean_machine'] = {               label = 'Bean Machine',                        weight = 10,    stack = false,    close = true,    description = 'Bean Machine',},

    -- Resource: jim_g_trading_cards
    ['card_burger_shot'] = {                label = 'Burger Shot',                         weight = 10,    stack = false,    close = true,    description = 'Burger Shot',},

    -- Resource: jim_g_trading_cards
    ['card_cluckin_bell'] = {               label = 'Cluckin\' Bell',                      weight = 10,    stack = false,    close = true,    description = 'Cluckin\' Bell',},

    -- Resource: jim_g_trading_cards
    ['card_up_n_atom_burger'] = {           label = 'Up-n-Atom Burger',                    weight = 10,    stack = false,    close = true,    description = 'Up-n-Atom Burger',},

    -- Resource: jim_g_trading_cards
    ['card_hookies'] = {                    label = 'Hookies',                             weight = 10,    stack = false,    close = true,    description = 'Hookies',},

    -- Resource: jim_g_trading_cards
    ['card_yellow_jack_inn'] = {            label = 'Yellow Jack Inn',                     weight = 10,    stack = false,    close = true,    description = 'Yellow Jack Inn',},

    -- Resource: jim_g_trading_cards
    ['card_liquor_ace'] = {                 label = 'Liquor Ace',                          weight = 10,    stack = false,    close = true,    description = 'Liquor Ace',},

    -- Resource: jim_g_trading_cards
    ['card_hen_house'] = {                  label = 'Hen House',                           weight = 10,    stack = false,    close = true,    description = 'Hen House',},

    -- Resource: jim_g_trading_cards
    ['card_tequi_la_la'] = {                label = 'Tequi-la-la',                         weight = 10,    stack = false,    close = true,    description = 'Tequi-la-la',},

    -- Resource: jim_g_trading_cards
    ['card_bahama_mamas'] = {               label = 'Bahama Mamas',                        weight = 10,    stack = false,    close = true,    description = 'Bahama Mamas',},

    -- Resource: jim_g_trading_cards
    ['card_los_santos_golf_club'] = {       label = 'Los Santos Golf Club',                weight = 10,    stack = false,    close = true,    description = 'Los Santos Golf Club',},

    -- Resource: jim_g_trading_cards
    ['card_vespucci_tennis_courts'] = {     label = 'Vespucci Tennis Courts',              weight = 10,    stack = false,    close = true,    description = 'Vespucci Tennis Courts',},

    -- Resource: jim_g_trading_cards
    ['card_public_library'] = {             label = 'Public Library',                      weight = 10,    stack = false,    close = true,    description = 'Public Library',},

    -- Resource: jim_g_trading_cards
    ['card_bishops_wtf_museum'] = {         label = 'Bishop\'s WTF Museum',                weight = 10,    stack = false,    close = true,    description = 'Bishop\'s WTF Museum',},

    -- Resource: jim_g_trading_cards
    ['card_del_perro_pier'] = {             label = 'Del Perro Pier',                      weight = 10,    stack = false,    close = true,    description = 'Del Perro Pier',},

    -- Resource: jim_g_trading_cards
    ['card_pacific_standard_bank'] = {      label = 'Pacific Standard Bank',               weight = 10,    stack = false,    close = true,    description = 'Pacific Standard Bank',},

    -- Resource: jim_g_trading_cards
    ['card_maze_bank_arena'] = {            label = 'Maze Bank Arena',                     weight = 10,    stack = false,    close = true,    description = 'Maze Bank Arena',},

    -- Resource: jim_g_trading_cards
    ['card_los_santos_international_airport'] = { label = 'Los Santos International Airport', weight = 10,  stack = false,    close = true,    description = 'Los Santos International Airport LSIA',},

    -- Resource: jim_g_trading_cards
    ['card_port_of_south_los_santos'] = {   label = 'Port of South Los Santos',            weight = 10,    stack = false,    close = true,    description = 'Port of South Los Santos',},

    -- Resource: jim_g_trading_cards
    ['card_union_depository'] = {           label = 'Union Depository',                    weight = 10,    stack = false,    close = true,    description = 'Union Depository',},

    -- Resource: jim_g_trading_cards
    ['card_fib_building'] = {               label = 'FIB Building',                        weight = 10,    stack = false,    close = true,    description = 'FIB Building',},

    -- Resource: jim_g_trading_cards
    ['card_iaa_building'] = {               label = 'IAA Building',                        weight = 10,    stack = false,    close = true,    description = 'IAA Building',},

    -- Resource: jim_g_trading_cards
    ['card_schlongberg_sachs_center'] = {   label = 'Schlongberg Sachs Center',            weight = 10,    stack = false,    close = true,    description = 'Schlongberg Sachs Center',},

    -- Resource: jim_g_trading_cards
    ['card_richards_majestic_studio'] = {   label = 'Richards Majestic Studio',            weight = 10,    stack = false,    close = true,    description = 'Richards Majestic Studio',},

    -- Resource: jim_g_trading_cards
    ['card_weazel_news_tower'] = {          label = 'Weazel News Tower',                   weight = 10,    stack = false,    close = true,    description = 'Weazel News Tower',},

    -- Resource: jim_g_trading_cards
    ['card_kortz_center'] = {               label = 'Kortz Center',                        weight = 10,    stack = false,    close = true,    description = 'Kortz Center',},

    -- Resource: jim_g_trading_cards
    ['card_ulsa_university'] = {            label = 'ULSA University',                     weight = 10,    stack = false,    close = true,    description = 'ULSA University',},

    -- Resource: jim_g_trading_cards
    ['card_st_fiacre_hospital'] = {         label = 'St. Fiacre Hospital',                 weight = 10,    stack = false,    close = true,    description = 'St. Fiacre Hospital',},

    -- Resource: jim_g_trading_cards
    ['card_central_los_santos_medical_center'] = { label = 'Central Los Santos Medical Center', weight = 10, stack = false, close = true, description = 'Central Los Santos Medical Center',},

    -- Resource: jim_g_trading_cards
    ['card_bolingbroke_penitentiary'] = {   label = 'Bolingbroke Penitentiary',            weight = 10,    stack = false,    close = true,    description = 'Bolingbroke Penitentiary',},

    -- Resource: jim_g_trading_cards
    ['card_palmer_taylor_power_station'] = { label = 'Palmer-Taylor Power Station',        weight = 10,    stack = false,    close = true,    description = 'Palmer-Taylor Power Station',},

    -- Resource: jim_g_trading_cards
    ['card_ron_alternates_wind_farm'] = {   label = 'RON Alternates Wind Farm',            weight = 10,    stack = false,    close = true,    description = 'RON Alternates Wind Farm',},

    -- Resource: jim_g_trading_cards
    ['card_davis_quartz_quarry'] = {        label = 'Davis Quartz Quarry',                 weight = 10,    stack = false,    close = true,    description = 'Davis Quartz Quarry',},

    -- Resource: jim_g_trading_cards
    ['card_redwood_lights_track'] = {       label = 'Redwood Lights Track',                weight = 10,    stack = false,    close = true,    description = 'Redwood Lights Track',},

    -- Resource: jim_g_trading_cards
    ['card_vinewood_sign'] = {              label = 'Vinewood Sign',                       weight = 10,    stack = false,    close = true,    description = 'Vinewood Sign',},

    -- Resource: jim_g_trading_cards
    ['card_galileo_observatory'] = {        label = 'Galileo Observatory',                 weight = 10,    stack = false,    close = true,    description = 'Galileo Observatory',},

    -- Resource: jim_g_trading_cards
    ['card_diamond_casino_resort'] = {      label = 'Diamond Casino & Resort',             weight = 10,    stack = false,    close = true,    description = 'Diamond Casino & Resort',},

    -- Resource: jim_g_trading_cards
    ['card_fort_zancudo'] = {               label = 'Fort Zancudo',                        weight = 10,    stack = false,    close = true,    description = 'Fort Zancudo Military Base',},

    -- Resource: jim_g_trading_cards
    ['card_humane_labs_and_research'] = {   label = 'Humane Labs and Research',            weight = 10,    stack = false,    close = true,    description = 'Humane Labs and Research',},

    -- Resource: jim_g_trading_cards
    ['card_land_act_dam'] = {               label = 'Land Act Dam',                        weight = 10,    stack = false,    close = true,    description = 'Land Act Dam',},

    -- Resource: jim_g_trading_cards
    ['card_mount_chiliad_cable_car'] = {    label = 'Mount Chiliad Cable Car',             weight = 10,    stack = false,    close = true,    description = 'Mount Chiliad Cable Car',},

    -- Resource: jim_g_trading_cards
    ['card_paleto_bay_sheriffs_office'] = { label = 'Paleto Bay Sheriff’s Office',         weight = 10,    stack = false,    close = true,    description = 'Paleto Bay Sheriff’s Office',},

    -- Resource: jim_g_trading_cards
    ['card_sandy_shores_airfield'] = {      label = 'Sandy Shores Airfield',               weight = 10,    stack = false,    close = true,    description = 'Sandy Shores Airfield',},

    -- Resource: jim_g_trading_cards
    ['card_grapeseed_oneil_ranch'] = {      label = 'Grapeseed O\'Neil Ranch',             weight = 10,    stack = false,    close = true,    description = 'Grapeseed O\'Neil Ranch',},

    -- Resource: jim_g_trading_cards
    ['card_dignity_village'] = {            label = 'Dignity Village',                     weight = 10,    stack = false,    close = true,    description = 'Dignity Village',},

    -- Resource: jim_g_trading_cards
    ['card_altruist_camp'] = {              label = 'Altruist Camp',                       weight = 10,    stack = false,    close = true,    description = 'Altruist Camp',},

    -- Resource: jim_g_trading_cards
    ['card_noose'] = {                      label = 'N.O.S.E',                             weight = 10,    stack = false,    close = true,    description = 'N.O.S.E',},

    -- Resource: jim_g_trading_cards
    ['card_los_santos_city_hall'] = {       label = 'Los Santos City Hall',                weight = 10,    stack = false,    close = true,    description = 'Los Santos City Hall',},

    -- Resource: jim_g_trading_cards
    ['card_mirror_park_lake'] = {           label = 'Mirror Park Lake',                    weight = 10,    stack = false,    close = true,    description = 'Mirror Park Lake',},

    -- Resource: jim_g_trading_cards
    ['card_maze_bank_tower'] = {            label = 'Maze Bank Tower',                     weight = 10,    stack = false,    close = true,    description = 'Maze Bank Tower The Tallest',},

    -- Resource: jim_g_trading_cards
    ['card_eclipse_towers'] = {             label = 'Eclipse Towers',                      weight = 10,    stack = false,    close = true,    description = 'Eclipse Towers',},

    -- Resource: jim_g_trading_cards
    ['card_playboy_mansion'] = {            label = 'Playboy Mansion',                     weight = 10,    stack = false,    close = true,    description = 'Playboy Mansion Richman Mansion',},

    -- Resource: jim_g_trading_cards
    ['card_the_lighthouse'] = {             label = 'The Lighthouse',                      weight = 10,    stack = false,    close = true,    description = 'The Lighthouse El Gordo',},

    -- Resource: jim_g_trading_cards
    ['card_mount_gordo'] = {                label = 'Mount Gordo',                         weight = 10,    stack = false,    close = true,    description = 'Mount Gordo',},

    -- Resource: jim_g_trading_cards
    ['card_mount_josiah'] = {               label = 'Mount Josiah',                        weight = 10,    stack = false,    close = true,    description = 'Mount Josiah',},

    -- Resource: jim_g_trading_cards
    ['card_cassidy_creek_bridge'] = {       label = 'Cassidy Creek Bridge',                weight = 10,    stack = false,    close = true,    description = 'Cassidy Creek Bridge',},

    -- Resource: jim_g_trading_cards
    ['card_raton_canyon'] = {               label = 'Raton Canyon',                        weight = 10,    stack = false,    close = true,    description = 'Raton Canyon',},

    -- Resource: jim_g_trading_cards
    ['card_north_yankton'] = {              label = 'North Yankton',                       weight = 10,    stack = false,    close = true,    description = 'North Yankton Ludendorff Church',},

    -- Resource: jim_g_trading_cards
    ['card_cayo_perico_mansion'] = {        label = 'Cayo Perico Mansion',                 weight = 10,    stack = false,    close = true,    description = 'Cayo Perico Mansion',},

    -- Resource: jim_g_trading_cards
    ['card_merryweather_hq'] = {            label = 'Merryweather HQ',                     weight = 10,    stack = false,    close = true,    description = 'Merryweather HQ Elysian Island',},

    -- Resource: jim_g_trading_cards
    ['card_coveted_cove'] = {               label = 'Coveted Cove',                        weight = 10,    stack = false,    close = true,    description = 'Coveted Cove',},

    -- Resource: jim_g_trading_cards
    ['card_calafia_bridge'] = {             label = 'Calafia Bridge',                      weight = 10,    stack = false,    close = true,    description = 'Calafia Bridge',},

    -- Resource: jim_g_trading_cards
    ['card_tongva_valley_waterfall'] = {    label = 'Tongva Valley Waterfall',             weight = 10,    stack = false,    close = true,    description = 'Tongva Valley Waterfall',},

    -- Resource: jim_g_trading_cards
    ['card_mount_chiliad_summit'] = {       label = 'Mount Chiliad Summit',                weight = 10,    stack = false,    close = true,    description = 'Mount Chiliad Summit',},

    -- Resource: jim_g_trading_cards
    ['card_the_sunken_ufo'] = {             label = 'The Sunken UFO',                      weight = 10,    stack = false,    close = true,    description = 'The Sunken UFO North of Paleto',},

    -- Resource: jim_g_trading_cards
    ['card_the_sunken_cargo_ship'] = {      label = 'The Sunken Cargo Ship',               weight = 10,    stack = false,    close = true,    description = 'The Sunken Cargo Ship',},

    -- Resource: jim_g_trading_cards
    ['card_the_abandoned_mine_shaft'] = {   label = 'The Abandoned Mine Shaft',            weight = 10,    stack = false,    close = true,    description = 'The Abandoned Mine Shaft',},

    -- Resource: jim_g_trading_cards
    ['card_the_infinity_8_killers_house'] = { label = 'The Infinity 8 Killer’s House',     weight = 10,    stack = false,    close = true,    description = 'The Infinity 8 Killer’s House',},

    -- Resource: jim_g_trading_cards
    ['card_the_epsilon_center'] = {         label = 'The Epsilon Center',                  weight = 10,    stack = false,    close = true,    description = 'The Epsilon Center',},

    -- Resource: jim_g_trading_cards
    ['card_the_big_orange'] = {             label = 'The Big Orange',                      weight = 10,    stack = false,    close = true,    description = 'The Big Orange Juice Stand',},

    -- Resource: jim_g_trading_cards
    ['card_the_giant_dinosaur'] = {         label = 'The Giant Dinosaur',                  weight = 10,    stack = false,    close = true,    description = 'The Giant Dinosaur Rex\'s Diner',},

    -- Resource: jim_g_trading_cards
    ['card_the_chiliad_mystery_mural'] = {  label = 'The Chiliad Mystery Mural',           weight = 10,    stack = false,    close = true,    description = 'The Chiliad Mystery Mural',},

    -- Resource: jim_g_trading_cards
    ['card_the_golden_tree'] = {            label = 'The Golden Tree',                     weight = 10,    stack = false,    close = true,    description = 'The Golden Tree',},

    -- Resource: jim_g_trading_cards
    ['card_the_underwater_plane_wreck'] = { label = 'The Underwater Plane Wreck',          weight = 10,    stack = false,    close = true,    description = 'The Underwater Plane Wreck',},

    -- Resource: jim_g_trading_cards
    ['card_de_santa_house'] = {             label = 'De Santa House',                      weight = 10,    stack = false,    close = true,    description = 'De Santa House',},

    -- Resource: jim_g_trading_cards
    ['card_trevors_house'] = {              label = 'Trevor\'s House',                     weight = 10,    stack = false,    close = true,    description = 'Trevor\'s House',},

    -- Resource: jim_g_trading_cards
    ['card_franklins_house'] = {            label = 'Franklins House',                     weight = 10,    stack = false,    close = true,    description = 'Franklins House',},

    -- Resource: jim_g_trading_cards
    ['card_lamar_davis_house'] = {          label = 'Lamar Davis House',                   weight = 10,    stack = false,    close = true,    description = 'Lamar Davis House',},

    -- Resource: jim_g_trading_cards
    ['card_lester_crests_house'] = {        label = 'Lester Crest\'s House',               weight = 10,    stack = false,    close = true,    description = 'Lester Crest\'s House',},

    -- Resource: jim_g_trading_cards
    ['card_ron_jakowski_house'] = {         label = 'Ron Jakowski House',                  weight = 10,    stack = false,    close = true,    description = 'Ron Jakowski House',},

    -- Resource: jim_g_trading_cards
    ['card_ls_river_concrete'] = {          label = 'Los Santos River',                    weight = 10,    stack = false,    close = true,    description = 'Los Santos River Drainage Canal',},

    -- Resource: jim_g_trading_cards
    ['card_vespucci_lifeguard_tower'] = {   label = 'Vespucci Beach',                      weight = 10,    stack = false,    close = true,    description = 'Vespucci Beach Lifeguard Tower',},

    -- Resource: jim_g_trading_cards
    ['card_grand_senora_highway'] = {       label = 'Grand Senora Desert',                 weight = 10,    stack = false,    close = true,    description = 'Grand Senora Desert Highway',},

    -- Resource: jim_g_trading_cards
    ['card_tinsel_towers'] = {              label = 'Tinsel Towers',                       weight = 10,    stack = false,    close = true,    description = 'Tinsel Towers',},

    -- Resource: jim_g_trading_cards
    ['card_the_jetty'] = {                  label = 'The Jetty',                           weight = 10,    stack = false,    close = true,    description = 'The Jetty',},

    -- Resource: jim_g_trading_cards
    ['card_pipeline_inn'] = {               label = 'Pipeline Inn',                        weight = 10,    stack = false,    close = true,    description = 'Pipeline Inn',},

    -- Resource: jim_g_trading_cards
    ['card_pillbox_hospital'] = {           label = 'Pillbox Hospital',                    weight = 10,    stack = false,    close = true,    description = 'Pillbox Hospital',},

    -- Resource: jim_g_trading_cards
    ['card_oil_fields'] = {                 label = 'Oil Fields',                          weight = 10,    stack = false,    close = true,    description = 'Oil Fields',},

    -- Resource: r_lottery
    ['lottery_ticket'] = {
    	label = 'Lottery Ticket',
    	weight = 1,
    	stack = false,
    	close = true,
    },

    -- Resource: r_lottery
    ['easy_money_scratcher'] = {
    	label = 'Easy Money Scratcher',
    	weight = 1,
    	stack = false,
    	close = true,
    },

    -- Resource: r_lottery
    ['long_shot_scratcher'] = {
    	label = 'Long Shot Scratcher',
    	weight = 1,
    	stack = false,
    	close = true,
    },

    -- Resource: r_lottery
    ['bankroll_scratcher'] = {
    	label = 'Bankroll Scratcher',
    	weight = 1,
    	stack = false,
    	close = true,
    },

    -- Resource: r_lottery
    ['tic_tac_toe_scratcher'] = {
    	label = 'Tic Tac Toe Scratcher',
    	weight = 1,
    	stack = false,
    	close = true,
    },

    -- Resource: r_fraud
    ['fraud_laptop'] = {
    	  label = 'Fruitbook Pro',
    	  weight = 1550,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['wifi_hotspot'] = {
    	  label = '5G Hotspot',
    	  weight = 550,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['msr_reader'] = {
    	  label = 'MSR',
    	  weight = 150,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['card_embosser'] = {
    	  label = 'Emboss Machine',
    	  weight = 2000,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['printer'] = {
    	  label = 'Printer',
    	  weight = 1250,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['usb_drive'] = {
    		label = 'USB Drive',
    		weight = 50,
    		stack = false,
    		close = false,
    },

    -- Resource: r_fraud
    ['generator'] = {
    	  label = 'Gas Generator',
    	  weight = 1500,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['blank_card'] = {
    	  label = 'Blank Card',
    	  weight = 5,
    	  stack = true,
    	  close = true,
    },

    -- Resource: r_fraud
    ['encoded_card'] = {
    	  label = 'Encoded Card',
    	  weight = 5,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['cloned_card'] = {
    	  label = 'Cloned Card',
    	  weight = 5,
    	  stack = false,
    	  close = true,
    },

    -- Resource: r_fraud
    ['blank_check'] = {
    	  label = 'Blank Check',
    	  weight = 5,
    	  stack = true,
    	  close = true,
    },

    -- Resource: r_fraud
    ['forged_check'] = {
    	  label = 'Forged Check',
    	  weight = 5,
    	  stack = false,
    	  close = true,
    },

    -- Resource: utility_jewelry
    ["jewels"] = {
        label = "Jewels",
        weight = 1,
        stack = true,
    },

    -- Resource: utility_jewelry
    ["ruby"] = {
        label = "Red Ruby",
        weight = 1,
    },

    -- Resource: utility_jewelry
    ["panther"] = {
        label = "Panther Statue",
        weight = 1,
    },

    -- Resource: utility_jewelry
    ["ruby_necklace"] = {
        label = "Ruby Necklace",
        weight = 1,
    },

    -- Resource: utility_jewelry
    ["emerald"] = {
        label = "Emerald",
        weight = 1,
    },

    -- Resource: utility_jewelry
    ["golden_banana"] = {
        label = "Golden Banana",
        weight = 1,
    },

    -- Resource: utility_jewelry
    ["cable_cutter"] = {
        label = "Cable cutter",
        weight = 1,
        stack = true,
    },

    -- Resource: utility_jewelry
    ["glass_cutter"] = {
        label = "Glass cutter",
        weight = 1,
        stack = true,
    },

    -- Resource: utility_jewelry
    ["screwdriver"] = {
        label = "Screwdriver",
        weight = 1,
        stack = true,
    },

    -- Resource: kq_cocaine
    ["coke"] = {
            label = "Cocaine",
            weight = 500,
            stack = true,
            close = true,
        },

    -- Resource: kq_cocaine
    ["cement"] = {
            label = "Cement",
            weight = 5000,
            stack = true,
            close = true,
            consume = 0,
            server = {
                export = 'kq_cocaine.UseCement',
            },
        },

    -- Resource: kq_cocaine
    ["hydrochloric_acid"] = {
            label = "Hydrochloric acid",
            weight = 1000,
            stack = true,
            close = true,
        },

    -- Resource: kq_cocaine
    ["coca_blend"] = {
            label = "Coca blend",
            weight = 200,
            stack = true,
            close = true,
        },

    -- Resource: kq_cocaine
    ["coca_leaf"] = {
            label = "Coca leaf",
            weight = 100,
            stack = true,
            close = true,
            consume = 0,
            server = {
                export = 'kq_cocaine.UseLeaf',
            },
        },

    -- Resource: kq_cocaine
    ["coca_paste"] = {
            label = "Coca paste",
            weight = 100,
            stack = true,
            close = true,
        },

    -- Resource: kq_cocaine
    ["gasoline"] = {
            label = "Gasoline",
            weight = 3000,
            stack = true,
            close = true,
        },

    -- Resource: tk_evidence
    ["gsr_cloth"] = {
    		label = "GSR Cloth",
    		weight = 100,
    		stack = true,
    		close = true,
    	},

    -- Resource: tk_evidence
    ["gsr_test_kit"] = {
    		label = "GSR Test Kit",
    		weight = 100,
    		stack = true,
    		close = true,
    	},

    -- Resource: tk_evidence
    ["uv_light"] = {
    		label = "UV Flashlight",
    		weight = 250,
    		stack = true,
    		close = true,
    	},

    -- Resource: tk_evidence
    ["evidence_camera"] = {
    		label = "Evidence Camera",
    		weight = 500,
    		stack = true,
    		close = true,
    	},

    -- Resource: tk_evidence
    ["bullet_casing"] = {
    		label = "Bullet Casing",
    		weight = 1,
    		stack = false,
    	},

    -- Resource: tk_evidence
    ["bullet_fragment"] = {
    		label = "Bullet Fragment",
    		weight = 1,
    		stack = false,
    	},

    -- Resource: tk_evidence
    ["blood_sample"] = {
    		label = "Blood Sample",
    		weight = 1,
    		stack = false,
    	},

    -- Resource: tk_evidence
    ["fingerprint"] = {
    		label = "Fingerprint Sample",
    		weight = 1,
    		stack = false,
    	},

    -- Resource: tk_evidence
    ["evidence"] = {
    		label = "Evidence",
    		weight = 1,
    		stack = false,
    	},

    -- Resource: tk_evidence
    ["bullet_hole"] = {
    		label = "Impact Sample",
    		weight = 1,
    		stack = false,
    	},

    -- Resource: qbx_idcard
    ['id_card'] = {
        label = 'Identification Card',
    },

    -- Resource: qbx_idcard
    ['driver_license'] = {
        label = 'Drivers License',
    },

    -- Resource: qbx_idcard
    ['weaponlicense'] = {
        label = 'Weapon License',
    },

    -- Resource: qbx_idcard
    ['lawyerpass'] = {
        label = 'Lawyer Pass',
    },

    -- Resource: BDX-Scooter
    ['scooter'] = {
        label = 'Scooter',
        weight = 3000,
        stack = false,
        close = true,
        description = 'A scooter for tricks and stunts'
    },

    -- Resource: kq_outfitbag
    ['kq_outfitbag'] = {
        label = "Outfit bag",
        weight = 4000,
        stack = true,
        close = true,
        description = "Holds different outfits",
        client = { image = "kq_outfitbag.png" },
    },

    -- Resource: rtx_arcades
    ['rtxplush1'] = {
        label = 'Plushie 1',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 1',
        client = { image = 'rtxplush1.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush2'] = {
        label = 'Plushie 2',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 2',
        client = { image = 'rtxplush2.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush3'] = {
        label = 'Plushie 3',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 3',
        client = { image = 'rtxplush3.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush4'] = {
        label = 'Plushie 4',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 4',
        client = { image = 'rtxplush4.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush5'] = {
        label = 'Plushie 5',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 5',
        client = { image = 'rtxplush5.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush6'] = {
        label = 'Plushie 6',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 6',
        client = { image = 'rtxplush6.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush7'] = {
        label = 'Plushie 7',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 7',
        client = { image = 'rtxplush7.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush8'] = {
        label = 'Plushie 8',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 8',
        client = { image = 'rtxplush8.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush9'] = {
        label = 'Plushie 9',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 9',
        client = { image = 'rtxplush9.png' },
    },

    -- Resource: rtx_arcades
    ['rtxplush10'] = {
        label = 'Plushie 10',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Plushie 10',
        client = { image = 'rtxplush10.png' },
    },
}
