function test_sew_items()
  sew_bow()
  sew_bomb()
  sew_sword()
end

function sew_bow()
  sew_progressives("bow_quiver","no_bow","no_quiver",4)
end

function sew_bomb()
  sew_toggle("bomb_bag_sew","bombs","no_bomb")
end

function sew_sword()
  sew_toggle("sword_spin","hurricane","no_sword")
end

function sew_leaf()
  sew_toggle("leaf_magic","leaf","no_magic")
end

function sew_progressives(input,prog1,prog2,intIO)
  local output  = Tracker:FindObjectForCode(input)
  local progIO1 = Tracker:FindObjectForCode(prog1)
  local progIO2 = Tracker:FindObjectForCode(prog2)
  output.CurrentStage = progIO2.CurrentStage * intIO + progIO1.CurrentStage
end

function sew_toggle(input,tog,prog)
  local output = Tracker:FindObjectForCode(input)
  local progIO = Tracker:FindObjectForCode(prog)
  local mod = Tracker:ProviderCountForCode(tog)

  output.CurrentStage = progIO.CurrentStage * 2 + mod
end

function sew_check(tog1,tog2)
  local alone = Tracker:FindObjectForCode(tog1)
  local comp  = Tracker:FindObjectForCode(tog2)
  comp.Active = alone.Active
end
