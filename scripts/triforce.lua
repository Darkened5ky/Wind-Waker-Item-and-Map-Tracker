function test_triforce()
  local triforce_count = Tracker:ProviderCountForCode("triforce")
  local triforce = Tracker:FindObjectForCode("triforce_full")

  if triforce_count == 8 then
    triforce.Active = true
  else
    triforce.Active = false
  end
end
