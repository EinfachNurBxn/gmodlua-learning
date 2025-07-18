-- include("autorun/sh_myaddon.lua")
local ply = LocalPlayer()


-- Mein erstes DFrame mit Button der einen print mit dem ply:Nick(), der ply:SteamID() und dem os.date mit Uhrzeit ausgibt. :D

concommand.Add("dframe_open", function()
    local frame = vgui.Create("DFrame")
    frame:SetSize(400, 500)
    frame:Center()
    frame:SetTitle("Mein erstes Frame")
    frame:SetScreenLock(true)
    frame:MakePopup()

    local button = vgui.Create("DButton", frame)
    button:SetSize(200, 200)
    button:Dock(FILL)
    button:SetText("Mein erster Button")
    button.DoClick = function()
        print("Button wurde geklickt von Spieler: " .. ply:Nick() .. " mit der SteamID: " .. ply:SteamID() .. " um: " .. os.date("%H:%M:%S"))
    end
end)

