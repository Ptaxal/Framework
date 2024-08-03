function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw a Sprite on the center of a PolyZone to hint where it's located
Config.DrawSprite = true

-- The default distance to draw the Sprite
Config.DrawDistance = 10.0

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = { 255, 255, 255, 255 }

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.SuccessDrawColor = { 220, 20, 60, 255 }

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = { 255, 255, 255, 255 }

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-- Whether to disable ALL controls or only specificed ones
Config.DisableControls = true

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {

}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetModels = {

}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {
	-- Кураторская зона
	[1] = {
        model = `a_m_m_business_01`,
        coords = vector4(-1267.17, -3002.61, -49.49, 177.72),
        networked = false,
        invincible = true,
        blockevents = true,
        freeze = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-clothing:client:openMenu",
                    icon = "fas fa-sign-in-alt",
                    label = "Меню одежды",
                },
            },
            distance = 2.5
        }
    },
	[2] = {
        model = `a_m_m_business_01`,
        coords = vector4(-1274.09, -3005.27, -49.49, 223.65),
        networked = false,
        invincible = true,
        blockevents = false,
        freeze = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-clothing:client:openMenu",
                    icon = "fas fa-sign-in-alt",
                    label = "Меню одежды",
                },
            },
            distance = 2.5
        }
    },
	[3] = {
        model = `a_m_m_business_01`,
        coords = vector4(-1260.65, -3004.44, -49.49, 143.61),
        networked = false,
        invincible = true,
        blockevents = false,
        freeze = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-clothing:client:openMenu",
                    icon = "fas fa-sign-in-alt",
                    label = "Меню одежды",
                },
            },
            distance = 2.5
        }
    },
	[4] = {
        model = `s_m_m_doctor_01`,
        coords = vector4(-1271.59, -3023.02, -49.49, 351.41),
        nnetworked = false,
        invincible = true,
        blockevents = false,
        freeze = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "hospital:client:Revive",
                    icon = "fas fa-sign-in-alt",
                    label = "Мне плохо!",
                },
            },
            distance = 2.5
        }
    },
	[5] = {
        model = `s_m_m_doctor_01`,
        coords = vector4(-1263.72, -3023.59, -49.49, 16.29),
        networked = false,
        invincible = true,
        blockevents = false,
        freeze = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "hospital:client:Revive",
                    icon = "fas fa-sign-in-alt",
                    label = "Мне плохо!",
                },
            },
            distance = 2.5
        }
    },
	-- Ambulance
	[6] = {
        model = `s_m_m_doctor_01`,
        coords = vector4(310.82, -597.71, 42.29, 104.28),
        networked = false,
        invincible = true,
        blockevents = true,
		freeze = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE',
    },
	[7] = {
        model = `s_m_m_paramedic_01`,
        coords = vector4(306.23, -597.18, 42.29, 19.23),
        networked = false,
        invincible = true,
        blockevents = true,
		freeze = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD',
		target = {
            options = {
                {
                    type = "client",
                    event = "qb-ambulancejob:checkin",
                    icon = "fas fa-sign-in-alt",
                    label = "Записатся на приём",
                },
            },
            distance = 2.5
        }
    },
    [8] = {
        model = `s_m_y_cop_01`,
        coords = vector4(441.13, -978.71, 29.69, 180.78),
        networked = false,
        invincible = true,
        blockevents = false,
		freeze = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD',
		target = {
            options = {
                {
                    type = "client",
                    event = "ps-mdt:client:selfregister",
                    icon = "fa-solid fa-gun",
                    label = "Зарегестрировать оружие",
                },
            },
            distance = 2.5
        }
    },

}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function JobTypeCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		local timeout = 0
		while state ~= 'started' and timeout <= 100 do
			timeout += 1
			state = GetResourceState('qb-core')
			Wait(0)
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCheck = QBCore.Functions.HasItem

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		JobTypeCheck = function(jobType)
			if type(jobType) == 'table' then
				jobType = jobType[PlayerData.job.type]
				if jobType then
					return true
				end
			elseif jobType == 'all' or jobType == PlayerData.job.type then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.excludejob and JobCheck(data.excludejob) then return false end
	if data.jobType and not JobTypeCheck(data.jobType) then return false end
	if data.excludejobType and JobTypeCheck(data.excludejobType) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.excludegang and GangCheck(data.excludegang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end
