# Item definitions requiring a choice

Only one definition can exist per item name. These were left out of ITEMS_TO_ADD.lua so neither behavior is silently overwritten. Merge one selected definition into your items table.

## fingerprint_scanner

Source: resources/[jobs]/[legal]/[police]/tk_evidence/README.txt

```lua
["fingerprint_scanner"] = {
		label = "Fingerprint Scanner",
		weight = 250,
		stack = true,
		close = true,
	},
```

Source: resources/[jobs]/[legal]/[police]/qbx_fingerprint/README.md

```lua
['fingerprint_scanner'] = {
    label = 'Fingerprint Scanner',
    weight = 500,
    stack = false,
    close = true,
    description = 'Portable fingerprint scanner',
    client = {
        export = 'qbx_fingerprint.useFingerprintScanner'
    }
},
```

qbx_fingerprint explicitly requires its client.export for the handheld scanner. tk_evidence supplies a different scanner definition and registers usable items through its framework bridge. Choose the intended scanner behavior; do not paste both under the same key.
