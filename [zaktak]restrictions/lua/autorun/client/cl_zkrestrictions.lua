--[[ Made by:
 ____ ___  _  __ _____  ___  _  __
|_  //   \| |/ /|_   _|/   \| |/ /
 / / | - ||   <   | |  | - ||   < 
/___||_|_||_|\_\  |_|  |_|_||_|\_\

Do not edit below!
--]]

if CLIENT then
	include("autorun/sh_zkrconfig.lua")
end

ZaksRestrictions = ZaksRestrictions  or {}


hook.Add("SpawnMenuOpen", "ZK_Q_Menu_For_Allowed_Hook", function(ply) -- Q Menu Opening
	local ply = LocalPlayer()
	if (ZaksRestrictions.QMenuModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Q_Menu_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		chat.AddText( Color( 225, 0, 0 ), "[ZKR]: You're not allowed to use Q menu.")
		return false
	end
end)


hook.Add("PrePACEditorOpen", "ZK_Restrict_PAC", function(ply) -- PAC3 Editor Opening
	local ply = LocalPlayer()
	if (ZaksRestrictions.Pac3EditorModule == false) then return end
	local Groups = ZaksRestrictions.PacAllowed[ply:GetUserGroup()]
	if not Groups then
		chat.AddText( Color( 225, 0, 0 ), "[ZKR]: You're not allowed to use PAC3.")
		return false
	end
end)

hook.Add( "CanTool", "ZK_Restrict_Gmod_Tool", function(ply, tr, tool)
    local ply = LocalPlayer()
    if (ZaksRestrictions.ToolGunModule == false) then return end
    local Groups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
    if not Groups then
		chat.AddText( Color( 225, 0, 0 ), "[ZKR]: You're not allowed to use ToolGun.")
		return false
	end
end)

--[[
-- This code will turn off the player and health appearing when you look at them.
hook.Add( "HUDDrawTargetID", "HidePlayerInfo", function()
	return false
end )
--]]