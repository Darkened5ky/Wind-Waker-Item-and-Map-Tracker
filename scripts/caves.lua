function test_caves()
  local testEntranceRando = Tracker:FindObjectForCode("standard_entrance")
  if testEntranceRando.CurrentStage == 1 then
    local members = {"oi","sti","hi","cp","shi","rsi","bi","ds","piw","pic","bp","ol","sw","bc","ai","nr","po","ir","fm","dri"}
    local locatio = {"Savage Labyrinth","Star Island","Horseshoe Island","Cliff Plateau Isles","Shark Island","Rock Spire Isle","Bomb Island","Diamond Steppe Island","Pawprint Wizzrobe Cave","Pawprint Chuchu Cave","Bird's Peak Rock","Overlook Island","Stone Watcher Island","Boating Course","Angular Isles","Needle Rock Isle","Private Oasis","Ice Ring Isle","Fire Mountain","Dragon Roost Island"}
    for u=1,20 do
      local unopenedC = Tracker:FindObjectForCode("@" .. locatio[u] .. "/Unexplored Cave")
      if unopenedC.AvailableChestCount == 1 then
        local totlCount = Tracker:ProviderCountForCode(members[u] .. "Caves")
        if totlCount > 1 then
            call_locale(members[u])
            unopenedC.CapturedItem.Active = true
        end
      end
    end
  end
end

function call_locale(locale)
    local savag = locale .. "OiCave"
    local stari = locale .. "StiCave"
    local horse = locale .. "HiCave"
    local cliff = locale .. "CpCave"
    local shark = locale .. "ShiCave"
    local rocks = locale .. "RsiCave"
    local bombi = locale .. "BiCave"
    local diamo = locale .. "DsCave"
    local wizzr = locale .. "PiwCave"
    local chuch = locale .. "PicCave"
    local birds = locale .. "BpCave"
    local overl = locale .. "OlCave"
    local stone = locale .. "SwCave"
    local boati = locale .. "BcCave"
    local angle = locale .. "AiCave"
    local needl = locale .. "NrCave"
    local caban = locale .. "PoCave"
    local iceca = locale .. "IrCave"
    local firem = locale .. "FmCave"
    local drago = locale .. "DriCave"
    local caves = {savag,stari,horse,cliff,shark,rocks,bombi,diamo,wizzr,chuch,birds,overl,stone,boati,angle,needl,caban,iceca,firem,drago}
    for i=1,20 do
        local cave = Tracker:FindObjectForCode(caves[i])
        print(cave.Name .. " being inactivated.")
        cave.Active = false
    end
end
