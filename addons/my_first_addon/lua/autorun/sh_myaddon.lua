function testing(ply, text, teamChat)
    print("Deine Hook hat funktioniert!")
    print(ply:Nick() .. " hat was gesagt: "  .. text)
end

hook.Add("PlayerSay", "ChatHook", testing)



hook.Add("KeyPress", "KeyPressPrint", function(ply, key)

    if key == IN_FORWARD then
        print("Player: " .. ply:Nick() .. " pressed Key: W")
    end
end)