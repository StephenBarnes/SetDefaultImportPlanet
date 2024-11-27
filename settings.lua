data:extend({
    {
        order = "1",
        name = "SetDefaultImportPlanet-planet",
        type = "string-setting",
        setting_type = "startup",
        default_value = "vulcanus",
		allowed_values = {
			"nauvis",
			"vulcanus",
			"fulgora",
			"gleba",
			"aquilo",
		}
    },
})
-- Would be nice to generate the options here from the planet prototypes, for compatibility with mods that add planets. But settings stage is before data stage, so protos don't exist yet.