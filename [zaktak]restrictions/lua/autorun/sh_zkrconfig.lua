--[[ Made by:
 ____ ___  _  __ _____  ___  _  __
|_  //   \| |/ /|_   _|/   \| |/ /
 / / | - ||   <   | |  | - ||   < 
/___||_|_||_|\_\  |_|  |_|_||_|\_\

Config:
--]]

ZaksRestrictions = ZaksRestrictions  or {}



ZaksRestrictions.QMenuModule = true -- Should Q menu restrictions be activated?

ZaksRestrictions.PropSpawnModule = true -- Should console prop spawning restrictions be activated?. Recommended if QMenuModule is set to true.

ZaksRestrictions.ToolGunModule = true -- Should Tool Gun restrections be activated?

ZaksRestrictions.Pac3EditorModule = true -- Should PAC3 Editor restrictions be activated?

ZaksRestrictions.Pac3WearModule = true -- Should PAC3 Wearing restrictions be activated?. Recommended if Pac3EditorModule is set to true.


ZaksRestrictions.Q_Menu_Allowed_Groups = { -- ULX Groups allowed to open Q menu.
    ["trialmoderator"] = true,
    ["moderator"] = true,
    ["admin"] = true,
    ["headadmin"] = true,
    ["superadmin"] = true,
    ["dev"] = true,
--  ["GroupName"] = true,
}

ZaksRestrictions.ToolGunModule = { -- ULX Groups allowed to use the toolgun.
    ["trialmoderator"] = true,
    ["moderator"] = true,
    ["admin"] = true,
    ["headadmin"] = true,
    ["superadmin"] = true,
    ["dev"] = true,
--  ["GroupName"] = true,
}

ZaksRestrictions.Prop_Spawn_Allowed_Groups = { -- ULX Groups allowed to spawn props.
    ["trialmoderator"] = true,
    ["moderator"] = true,
    ["admin"] = true,
    ["headadmin"] = true,
    ["superadmin"] = true,
    ["dev"] = true,
--  ["GroupName"] = true,
}

ZaksRestrictions.PacAllowed = { -- ULX Groups allowed to open and wear pac3.
    ["trialmoderator"] = true,
    ["moderator"] = true,
    ["admin"] = true,
    ["headadmin"] = true,
    ["superadmin"] = true,
    ["dev"] = true,
--  ["GroupName"] = true,
}
