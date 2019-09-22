--  Load configuration options up front
-- ScriptHost:LoadScript("scripts/settings.lua")

Tracker:AddItems("items.json")
Tracker:AddMaps("maps.json")
Tracker:AddLocations("locations.json")
Tracker:AddLayouts("layouts/tracker_layout.json")
Tracker:AddLayouts("layouts/broadcast_layout.json")

function tracker_on_accessibility_updated()
    local triforce_count = Tracker:ProviderCountForCode("triforce")
    local triforce = Tracker:FindObjectForCode("triforce_full")

    if triforce_count == 8 then
        triforce.Active = true
    else
        triforce.Active = false
    end
end
