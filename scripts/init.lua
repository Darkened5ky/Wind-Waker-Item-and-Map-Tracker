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

function tracker_on_accessibility_updated()
    local triforce_count = Tracker:ProviderCountForCode("triforce")
    local triforce = Tracker:FindObjectForCode("triforce_full")

    if triforce_count == 8 then
        triforce.Active = true
    else
        triforce.Active = false
    end

    local startingIslands = Tracker:ProviderCountForCode("starting_island")
    local islandTitle = Tracker:FindObjectForCode("locale_select")

    if startingIslands > 1 then
        islandTitle.Active = false
    else
        islandTitle.Active = true
    end
end
