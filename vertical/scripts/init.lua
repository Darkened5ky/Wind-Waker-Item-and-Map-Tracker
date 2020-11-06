--  Load configuration options up front
-- ScriptHost:LoadScript("scripts/settings.lua")

Tracker:AddItems("items/chart.json")
Tracker:AddItems("items/dungeon.json")
Tracker:AddItems("items/entrance.json")
Tracker:AddItems("items/freestanding.json")
Tracker:AddItems("items/general.json")
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/toggle.json")

Tracker:AddMaps("maps.json")

Tracker:AddLayouts("layouts/quest.json")
Tracker:AddLayouts("layouts/freestanding_layout.json")
Tracker:AddLayouts("layouts/settings.json")

Tracker:AddLocations("locations.json")

Tracker:AddLayouts("layouts/tracker_layout.json")
Tracker:AddLayouts("layouts/broadcast_layout.json")
