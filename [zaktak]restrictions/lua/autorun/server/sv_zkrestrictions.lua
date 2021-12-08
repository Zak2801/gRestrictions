--[[ Made by:
 ____ ___  _  __ _____  ___  _  __
|_  //   \| |/ /|_   _|/   \| |/ /
 / / | - ||   <   | |  | - ||   < 
/___||_|_||_|\_\  |_|  |_|_||_|\_\

Do not edit below!
--]]

if SERVER then
	include("autorun/sh_zkrconfig.lua")
end

ZaksRestrictions = ZaksRestrictions  or {}

local delay = 0


--------------------------------------PropSpawning----------------------------------------------

hook.Add("PlayerSpawnProp", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "[ZKR]: You're not allowed to spawn props." )
		return false
	end
end)

hook.Add("PlayerSpawnEffect", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "[ZKR]: You're not allowed to spawn props." )
		return false
	end
end)

hook.Add("PlayerSpawnNPC", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "[ZKR]: You're not allowed to spawn props." )
		return false
	end
end)

hook.Add("PlayerSpawnObject", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "[ZKR]: You're not allowed to spawn props." )
		return false
	end
end)

hook.Add("PlayerSpawnRagdoll", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "[ZKR]: You're not allowed to spawn props." )
		return false
	end
end)

hook.Add("PlayerSpawnSWEP", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "[ZKR]: You're not allowed to spawn props." )
		return false
	end
end)

hook.Add("PlayerSpawnVehicle", "ZK_Propspawn_groups_only", function(ply) -- Prop Spanwing
	if (ZaksRestrictions.PropSpawnModule == false) then return end
	local prop_spawnGroups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
	if not prop_spawnGroups then
		ply:ChatPrint( "[ZKR]: You're not allowed to spawn props." )
		return false
	end
end)

--------------------------------------PropSpawning----------------------------------------------



hook.Add("PrePACConfigApply", "ZK_Restrict_PAC_Apply", function(ply) -- PAC3 Wear
	if (ZaksRestrictions.Pac3WearModule == false) then return end
	local Groups = ZaksRestrictions.PacAllowed[ply:GetUserGroup()]
	if not Groups then
		return false,"[ZKR]: You're not allowed to use PAC3."
	end
end)



hook.Add( "CanTool", "ZK_Restrict_Gmod_Tool_SV", function(ply, tr, tool) -- Tool Gun usage
    if (ZaksRestrictions.ToolGunModule == false) then return end
    local Groups = ZaksRestrictions.Prop_Spawn_Allowed_Groups[ply:GetUserGroup()]
    if not Groups then
		return false
	end
end)


local e = Color(85, 235, 100)
local d = Color(235, 90, 90)

MsgC(Color(180, 85, 235), "\n////////////////////////////////////////\n")
MsgC(Color(85, 190, 235), "// Zaktak's Restrictions Running: Version v1.1 //")
if (ZaksRestrictions.QMenuModule) then MsgC(e, "\n// Q Menu Module: Enabled //") else MsgC(d, "\n// Q Menu Module: Disabled //") end
if (ZaksRestrictions.PropSpawnModule) then MsgC(e, "\n// Prop Spawning Module: Enabled //") else MsgC(d, "\n// Prop Spawning Module: Disabled //") end
if (ZaksRestrictions.ToolGunModule) then MsgC(e, "\n// ToolGun Module: Enabled //") else MsgC(d, "\n// ToolGun Module: Disabled //") end
if (ZaksRestrictions.Pac3EditorModule) then MsgC(e, "\n// PAC3 Editor Module: Enabled //") else MsgC(d, "\n// PAC3 Editor Module: Disabled //") end
if (ZaksRestrictions.Pac3WearModule) then MsgC(e, "\n// PAC3 Wear Module: Enabled //\n") else MsgC(d, "\n// PAC3 Wear Module: Disabled //\n") end
MsgC(Color(180, 85, 235), "////////////////////////////////////////\n")