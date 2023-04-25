--This is as working of 4/24/2023
local Blacklisted = {"CHECKER_1", "OneMoreTime", "TeleportDetect"}
local old
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod(); local args = {...}
    if method:lower() == "fireserver" and self.Name == "MainEvent" then
        if #args > 0 and table.find(Blacklisted, args[1]) then getcallingscript().Disabled = true; return nil end
    end
    return old(self, ...)
end))
game:GetService("ScriptContext"):SetTimeout(2)
