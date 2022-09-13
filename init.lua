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
Config.DrawSprite = false

-- The default distance to draw the Sprite
Config.DrawDistance = 10.0

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = {255, 255, 255, 255}

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.SuccessDrawColor = {30, 144, 255, 255}

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {
	["Search L1"] = {
        name = "Search Container1",
        coords = vector3(1148.44, -2978.71, 5.9),
        length = 2.45,
        width = 0.4,
        heading = 2,
        debugPoly = false,
        minZ = 3.1,
        maxZ = 7.5,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L2"] = {
        name = "Search Container2",
        coords = vector3(1148.52, -2970.7, 5.9),
        length = 0.4,
        width = 2.4,
        heading = 270,
        debugPoly = false,
        minZ = 3.3,
        maxZ = 7.3,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L3"] = {
        name = "Search Container3",
        coords = vector3(1106.42, -2976.43, 5.9),
        length = 2.4,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 4.9,
        maxZ = 8.4,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L4"] = {
        name = "Search Container4",
        coords = vector3(1106.42, -2976.43, 5.9),
        length = 2.45,
        width = 0.4,
        heading = 0,
        debugPoly = false,
        minZ = 4.9,
        maxZ = 8.9,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L5"] = {
        name = "Search Container5",
        coords = vector3(993.76, -2985.48, 5.9),
        length = 2.45,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 3.5,
        maxZ = 7.5,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",

            },
        },
        distance = 2.5
    },
	["Search L6"] = {
        name = "Search Container6",
        coords = vector3(1049.47, -2995.04, 5.9),
        length = 2.45,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 3.3,
        maxZ = 7.5,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L7"] = {
        name = "Search Container7",
        coords = vector3(938.7, -2987.22, 5.9),
        length = 2.45,
        width = 0.4,
        heading = 0,
        debugPoly = false,
        minZ = 3.3,
        maxZ = 7.5,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L8"] = {
        name = "Search Container8",
        coords = vector3(968.58, -2974.66, 5.9),
        length = 2.45,
        width = 1,
        heading = 270,
        debugPoly = false,
        minZ = 3.5,
        maxZ = 7.5,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L9"] = {
        name = "Search Container9",
        coords = vector3(911.21, -2971.27, 5.9),
        length = 2.45,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 3.3,
        maxZ = 7.3,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },
	["Search L10"] = {
        name = "Search Container10",
        coords = vector3(1021.37, -2979.14, 5.9),
        length = 2.45,
        width = 0.4,
        heading = 0,
        debugPoly = false,
        minZ = 3.5,
        maxZ = 7.3,
        options = {
            { 
                type = "server",
                event = "qb-trashsearch:server:searchTrash",
                icon = "fa-solid fa-container-storage",
                label = "Search Container",
                
            },
        },
        distance = 2.5
    },

	["weedshop"] = {
        name = "PickWetBud",
        coords = vector3(363.34, -1252.97, 32.59),
        length = 0.8,
        width = 0.8,
        heading = 51,
        debugPoly = false,
        minZ = 29.14,
        maxZ = 34.14,
        options = {
            { 
                type = "client",
                event = "qb-weedshop:pick",
                icon = "fa-solid fa-cannabis",
                label = "Pick Wet Bud",
                job = "weedshop",
            },
        },
        distance = 2.5
    },

	["boxzone1"] = {
        name = "Pillbox",
        coords = vector3(310.25, -597.55, 43.28),
        length = 0.45,
        width = 0.35,
        heading = 334,
        debugPoly = false,
        minZ = 40.83,
        maxZ = 43.48,
        options = {
            {
                type = "client",
                event = "EMSToggle:Duty",
                icon = "fas fa-sign-in-alt",
                label = "Sign In",
                job = "ambulance",
            },
        },
        distance = 2.5
    },
	--===============[crafting]=================--
	["Attachmentcrafting"] = {
        name = "attachmentcrafting",
        coords = vector3(-1724.49, 233.98, 58.54),
        length = 0.65,
        width = 1,
        heading = 23,
        debugPoly = false,
        minZ = 56.54,
        maxZ = 59.74,
        options = {
            {
                type = "client",
                event = "inventory:client:WeaponAttachmentCrafting",
                icon = "fas fa-sign-in-alt",
                label = "Attachment Crafting",
                
            },
        },
        distance = 2.5
    },
}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetModels = {
	["targetmodel1"] = {
        models = {
            -1892277020
            --"g_m_importexport_0",
           -- "g_m_m_armboss_01"
        },
        options = {
            {
                type = "client",
                event = "jim-mechanic:client:Store:Menu",
                icon = "fas fa-hands",
                label = "Open Mechanic Shop",
                job = "mechanic",
            },
        
        },
        distance = 5,
    },
--===============[Poppyfarm]=============--
		["poppyfarm"] = {
			models = {
				'prop_plant_fern_01b',
	   
			},
			options = {
				{
					type = "client",
					event = "six-poppyfarm:getitem",
					parameters = {},
					icon = "fas fa-weight-hanging",
					label = "Harvest",
				},
			},
			distance = 1.5
		},
	--===============[vending]=============--
	--[[['PDGarage'] = {
        models = `ig_trafficwarden`,
        options = {
            {
                --type = "client",
                event = "garage:menu",
                icon = "fa-solid fa-bed",
                label = "Get in Bed",
				
            },
        },
        distance = 2.5
    },]]
	--===============[ems]=================--
	['HospitalBed'] = {
        models = `v_med_bed1`,
        options = {
            {
                type = "client",
                event = "qb-ambulancejob:beds",
                icon = "fa-solid fa-bed",
                label = "Get in Bed",

            },
        },
        distance = 2.5
    },
	--=====================================--
	--===============[crafting]=================--
	["Crafting"] = {
        models = {
            prop_toolchest_05,
            prop_tool_bench02_ld,
            prop_tool_bench02,
            prop_toolchest_02,
            prop_toolchest_03,
            prop_toolchest_03_l2,
            prop_toolchest_05,
            prop_toolchest_04,
        },
        options = {
            {
                type = "client",
                event = "inventory:client:Crafting",
                icon = "fas fa-wrench",
                label = "Craft",
            },
        },
        distance = 4.0
    },
	--=====================================--
  --===============[vehicles]=================--
	["VehicleRental"] = {
        models = {
            'a_m_y_business_03',
        },
        options = {
            {
                type = "client",
                event = "qb-rental:openMenu",
                icon = "fas fa-car",
                label = "Rent Vehicle",
            },
        },
        distance = 4.0
    },
	["weedshopgarage"] = {
		models = {
			"a_m_m_beach_01"
		},
		options = {
			{
				type = "client",
				event = "garage:WeedShopGarage",
				icon = "fas fa-cannabis",
				label = "WeedShop Garage",
				job = "weedshop",
			}
		},
		distance = 2.5,
	},
	--=====================================--
    ["mw_coke_plant"] = {
        models = {
            -1098390,
            mw_coke_plant,
        },
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickCocaLeaves",
                icon = "fas fa-leaf",
                label = "pickCocaLeaves",
            },
        
        },
        distance = 5,
    },
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {
	options = {
		--[[ {
			 type = "client",
			 event = "qb-mechanicjob:client:PartMenu",
			 icon = "fas fa-key",
			 label = "plate",
		 },]]
		 {
			 type = "client",
			 event = 'qb-trunk:client:GetIn',
			 icon = "fas fa-truck",
			 label = "Hop Inside Trunk",
		 },
		--[[ {
			 type = "client",
			 event = 'jim-mechanic:Crafting:get',
			 icon = "fas fa-truck",
			 label = "Shop",
		 },]]

	 },
	 distance = 2.5,
}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {
	[1] = { 
		model = 'cs_stevehains', 
		coords = vector4(480.33, -996.7, 30.69, 95.45),
		minusOne = true, 
		freeze = true, 
		invincible = true,
		blockevents = true,
		animDict = 'abigail_mcs_1_concat-0',
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  useModel = false, 
		  options = {
			{ 
			  num = 1, 
			  type = "client",
			  event = "qb-police:client:openArmoury", 
			  icon = 'fa-solid fa-box', 
			  label = 'Armory', 
			  --targeticon = 'fa-solid fa-box', 
			  job = 'police', 
			}
		  },
		  distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
		},
		currentpednumber = 0, -- This is the current ped number, this will be assigned when spawned, you can leave this out because it will always be created (OPTIONAL)
	},
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
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
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end