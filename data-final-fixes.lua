-- Set default import for Nauvis-produced items to Nauvis
local nauvisProducts = {
	{"item", "uranium-ore"},
	{"capsule", "raw-fish"},
	{"item", "uranium-235"},
	{"item", "uranium-238"},
	{"item", "uranium-fuel-cell"},
	{"item", "depleted-uranium-fuel-cell"},
	{"item", "nuclear-fuel"},
	{"ammo", "uranium-rounds-magazine"},
	{"ammo", "uranium-cannon-shell"},
	{"ammo", "explosive-uranium-cannon-shell"},
	{"ammo", "atomic-bomb"},
	{"item-with-entity-data", "spidertron"},
	{"item", "fission-reactor-equipment"},
	{"item", "biter-egg"},
	{"item", "captive-biter-spawner"},
	{"module", "productivity-module-3"},
	{"item", "biolab"},
}
for _, typeAndName in pairs(nauvisProducts) do
	log(serpent.line(typeAndName))
	if data.raw[typeAndName[1]][typeAndName[2]].default_import_location == nil then
		data.raw[typeAndName[1]][typeAndName[2]].default_import_location = "nauvis"
	end
end

-- For every thing that hasn't had a default import location set, set it to the selected planet.
local types = {"item", "tool", "ammo", "repair-tool", "module", "item-with-entity-data", "space-platform-starter-pack", "gun", "armor", "capsule"}
for _, thingType in pairs(types) do
	for _, thing in pairs(data.raw[thingType]) do
		if thing.default_import_location == nil then
			thing.default_import_location = settings.startup["SetDefaultImportPlanet-planet"].value
		end
	end
end