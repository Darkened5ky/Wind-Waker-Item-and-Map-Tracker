--  Load configuration options up front
-- ScriptHost:LoadScript("scripts/settings.lua")

Tracker:AddItems("items/chart.json")
Tracker:AddItems("items/dungeon.json")
Tracker:AddItems("items/entrance.json")
Tracker:AddItems("items/freestanding.json")
Tracker:AddItems("items/general.json")
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/toggle.json")
Tracker:AddItems("items/locales.json")

Tracker:AddMaps("maps.json")

Tracker:AddLayouts("layouts/quest.json")
Tracker:AddLayouts("layouts/freestanding_layout.json")
Tracker:AddLayouts("layouts/settings.json")

Tracker:AddLocations("locations.json")

Tracker:AddLayouts("layouts/tracker_layout.json")
Tracker:AddLayouts("layouts/broadcast_layout.json")

ScriptHost:LoadScript("scripts/caves.lua")
ScriptHost:LoadScript("scripts/triforce.lua")
ScriptHost:LoadScript("scripts/sew_items.lua")
ScriptHost:LoadScript("scripts/my_settings.lua")

use_my_settings()

function tracker_on_accessibility_updated()
  test_triforce()
  test_caves()
  test_sew_items()
end
