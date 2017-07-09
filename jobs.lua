--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

-- [ Category ] [ Start ] --
DarkRP.createCategory{
    name = "Clones",
    categorises = "jobs",
    startExpanded = false,
    color = Color(255, 65, 65, 255),
    canSee = function(ply) return true end,
    sortOrder = 0
}

DarkRP.createCategory{
    name = "Shock Troopers",
    categorises = "jobs",
    startExpanded = false,
    color = Color(255, 255, 255, 255),
    canSee = function(ply) return true end,
    sortOrder = 1
}
-- [ Category ] [ End ] --

-- [ Clone ] [ Start ] --
TEAM_CCADET = DarkRP.createJob("Clone Cadet", {
    color = Color(0, 0, 0, 255),
    model = {"models/player/clonecadet/clonecadet.mdl"},
    description = [[You are in training.]],
    weapons = {"tfa_swch_dc15a"},
    command = "cc",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Clones",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(25)
        ply:SetHealth(25)
    end
}) 
-- [ Clone ] [ End ] --

-- [ Shock Troopers ] [ Start ] --
TEAM_STROOPER = DarkRP.createJob("Shock Trooper", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/ggck/ggck.mdl"},
    description = [[You are a Shock Trooper]],
    weapons = {"tfa_swch_dc15a"},
    command = "st",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Shock Troopers",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(100)
        ply:SetHealth(100)
    end
})

TEAM_SCORPORAL = DarkRP.createJob("Shock Corporal", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/ggck/ggck.mdl"},
    description = [[You are a Shock Corporal]],
    weapons = {"tfa_swch_dc15a"},
    command = "sc",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Shock Troopers",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(150)
        ply:SetHealth(150)
    end
}) 

TEAM_SSERGEANT = DarkRP.createJob("Shock Sergeant", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/ggck/ggck.mdl"},
    description = [[You are a Shock Sergeant]],
    weapons = {"tfa_swch_dc15a"},
    command = "ss",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Shock Troopers",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end
}) 

TEAM_SLIEUTENANT = DarkRP.createJob("Shock Lieutenant", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/ggck/ggck.mdl"},
    description = [[You are a Shock Lieutenant]],
    weapons = {"tfa_swch_dc15a"},
    command = "sl",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Shock Troopers",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
    end
}) 

TEAM_SCAPTAIN = DarkRP.createJob("Shock Captain", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/ggck/ggck.mdl"},
    description = [[You are a Shock Captain]],
    weapons = {"tfa_swch_dc15a"},
    command = "sca",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Shock Troopers",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(300)
        ply:SetHealth(300)
    end
}) 

TEAM_SMAJOR = DarkRP.createJob("Shock Major", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/ggck/ggck.mdl"},
    description = [[You are a Shock Major]],
    weapons = {"tfa_swch_dc15a"},
    command = "sma",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Shock Troopers",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(300)
        ply:SetHealth(300)
    end
})

TEAM_SCOMMADER = DarkRP.createJob("Shock Commander", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/ggthorn/ggthorn.mdl"},
    description = [[You are a Shock Commander]],
    weapons = {"tfa_swch_dc15a"},
    command = "scom",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Shock Troopers",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
    end
})
-- [ Shock Troopers ] [ End ] --
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
