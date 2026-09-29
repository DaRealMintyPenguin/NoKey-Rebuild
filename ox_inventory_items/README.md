# Items to add to ox_inventory

ITEMS_TO_ADD.lua contains 1071 unique item definitions collected from 15 local resource installation files. ITEM_CONFLICTS.md contains 1 overlapping item name(s) requiring a choice. Everything is directly in this folder.

Merge the entries inside the return table into ox_inventory/data/items.lua. Do not paste a second return statement into an existing table and do not replace a full item list with this collection. Resource scripts register many usable actions themselves; supplied client/server exports and events were preserved. No live resource files were changed.

The current checkout has no resources/[ox]/ox_inventory/data/items.lua, so existing-item deduplication could not be checked. Restore the inventory's full base item list before merging these additions. These are supplied installation definitions, not an inferred complete inventory for every protected resource. Resources with only item names/images or an external setup link still need their vendor definitions (for example 17mov_Phone, the PRP packs and gg_hunting).

The KQ outfit bag and RTX plushie entries were converted from supplied QB definitions: unique becomes inverse stack, shouldClose becomes close, and image moves into client.image. No fictional use exports were added. The Wasabi ox_inventory definitions happen to be stored under an esx installer directory, but the definitions themselves are framework-neutral ox format and are suitable here.

Corrected the trailing space in wasabi_police tracking_bracelet to match its configured item name.

This collection includes items for installed resources currently commented out in server.cfg; their runtime dependencies still need fixing before their items work. Copy matching item icons from the original resource installation image folders into ox_inventory/web/images as needed. The source list is in ../audit/ox-inventory-items-index.json.
