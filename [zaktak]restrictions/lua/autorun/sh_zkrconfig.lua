--[[ Made by:
 ____ ___  _  __ _____  ___  _  __
|_  //   \| |/ /|_   _|/   \| |/ /
 / / | - ||   <   | |  | - ||   < 
/___||_|_||_|\_\  |_|  |_|_||_|\_\

Config:
--]]

ZaksRestrictions = ZaksRestrictions  or {}



ZaksRestrictions.QMenuModule = false -- Should Q menu restrictions be activated?

ZaksRestrictions.PropSpawnModule = true -- Should console prop spawning restrictions be activated?. Recommended if QMenuModule is set to true.

ZaksRestrictions.ToolGunModule = true -- Should Tool Gun restrections be activated?

ZaksRestrictions.Pac3EditorModule = false -- Should PAC3 Editor restrictions be activated?

ZaksRestrictions.Pac3WearModule = false -- Should PAC3 Wearing restrictions be activated?. Recommended if Pac3EditorModule is set to true.


ZaksRestrictions.Q_Menu_Allowed_Groups = { -- ULX Groups allowed to open Q menu.
	["tmod"] = true,
    ["mod"] = true,
    ["admin"] = true,
	["headadmin"] = true,
    ["superadmin"] = true,
    ["ep"] = true,
    ["dev"] = true,
--  ["GroupName"] = true,
}

ZaksRestrictions.ToolGunModule = { -- ULX Groups allowed to open Q menu.
    ["trialmoderator"] = true,
    ["moderator"] = true,
    ["admin"] = true,
    ["headadmin"] = true,
    ["superadmin"] = true,
    ["dev"] = true,
    ["eventplanner"] = true,
--  ["GroupName"] = true,
}

ZaksRestrictions.Prop_Spawn_Allowed_Groups = { -- ULX Groups allowed to spawn props and use toolgun.
    ["mod"] = true,
    ["smod"] = true,
    ["admin"] = true,
    ["headadmin"] = true,
    ["dev"] = true,
    ["superadmin"] = true,
    ["ep"] = true,
    ["headep"] = true,
--  ["GroupName"] = true,
}

ZaksRestrictions.PacAllowed = { -- ULX Groups allowed to open and wear pac3.
	["userpac"] = true,
	["veteranpac"] = true,
	["advisorpac"] = true,
	["tmod"] = true,
    ["mod"] = true,
    ["dev"] = true,
    ["admin"] = true,
	["commsupport"] = true,
	["headadmin"] = true,
    ["superadmin"] = true,
	["commsupport"] = true,
--  ["GroupName"] = true,
}