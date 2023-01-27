local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

--- false = non 
--- true = oui 

Config = {}

Config = {

	esxGet = "esx:getSharedObject",
	JobName = "ambulance",
	SocietyName = "society_ambulance",
	PrefixName = "E.M.S",

	ColorMenuR = 255, -- Bannière couleur R
    ColorMenuG = 11, -- Bannière couleur G
    ColorMenuB = 11, -- Bannière couleur B
    ColorMenuA = 150, -- Bannière couleur A

	RightLab = {RightLabel = "→→"},

	Marker = {
		Type = 20,
		Color = {R = 255, G = 0, B = 0},
		Size =  {x = 0.3, y = 0.3, z = 0.3},
		DrawDistance = 100,
		DrawInteract = 1.0, -- intéraction marker
	},

	logs = {
		-------------------------	
		NameLogs = "Logs - EMS",
		-------------------------
		service = "Webhook",
		boss = "Webhook",
		medikit = "Webhook",
		shop = "Webhook",
		CoffreObjets = "Webhook",
		Reanimation = "Webhook",
		AcceuilAmbulance = "Webhook",
		annonces = "Webhook",
		FicheMedical = "Webhook",
	},


	RespawnPoint = vector3(352.66, -589.304, 28.8),
	RespawnHeading = 254.92,

	GradeForRevive = "mod",

	NBHealPourDegatMarche = -1, -- si il a moins de 159 de vie alors la démarche seras actif et permanante.
	NBHealPourNODegatMarche = 60, -- si il a plus de 160 alors la démarche n'est pas actif .
	AnimationUniteX = true,
	Defibrilateur = true, -- quand 0 EMS le medikit et utilisable pour réanimé les potos
	PharmacieSociety = true,

	EarlyRespawnTimer = 60000 * 5, --60000 * 10 = 10 minutes, 60000 * 5 = 5 minutes.
	BleedoutTimer = 60000 * 60,  --60000 * 10 = 10 minutes, 60000 * 5 = 5 minutes.

	ReviveReward = 700,  -- Revive reward argent pour le EMS qui réanime 

	AntiCombatLog = true, -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)

	RemoveWeaponsAfterRPDeath = false, -- quand mort il perd c'est armes ?
	RemoveCashAfterRPDeath = false, -- quand mort il perd sont argent cash ?
	RemoveItemsAfterRPDeath = false, -- quand mort il perd c'est items ?

	EarlyRespawnFine = true,
	EarlyRespawnFineAmount = 5000,

	Nord = {

		Blips = {
			position = vector3(1839.70, 3669.73, 33.68),
			colour = 1,
			id = 61, 
			scale = 0.7,
			display = 4,
			shortRange = true,
		},

		vestiaire = vector3( 1818.76, 3675.85, 34.33),
		coffre = vector3(1830.87, 3674.42, 34.33),
		pharmacie = vector3(1821.85, 3674.80, 34.33),
		garage = vector3(1817.72, 3688.18, 34.22),
		fiche_medical = vector3(1848.97, 3682.03, 34.33),
		boss = vector3( 1841.67, 3677.96, 34.33),
		extra = vector3(-234.4259185791,6316.0239257813,31.489562988281),
		rdv = vector3( 1835.52, 3675.18, 34.33),
	},

	Sud = {

		Blips = {
			position = vector3( 283.67, -608.87, 43.28),
			colour = 1,
			id = 61, 
			scale = 0.7,
			display = 4,
			shortRange = true,
		},

		vestiaire = vector3( 298.87, -598.33, 43.28),
		coffre = vector3( 306.61, -601.76, 43.28),
		pharmacie = vector3( 309.51, -561.17, 43.28),
		garage = vector3( 338.98, -574.94, 28.80),
		garageHeli = vector3(-421.11520385742,-351.99652099609,24.229379653931),
		garageBato = vector3(-426.74963378906,-354.46499633789,24.229379653931),
		fiche_medical = vector3( 359.64, -599.83, 43.28),
		boss = vector3( 340.41, -590.72, 43.28),
		extra = vector3(-426.11410522461, -339.46450805664, 0.229433059692),
		rdv = vector3( 311.63, -593.14, 43.28),
		ascenceur = {
			monter = vector3( 338.57,-583.66, 74.16),-- heliport
			neutre = vector3( 327.22, -603.54, 43.28),-- hopital
			descendre = vector3( 342.26, -585.56, 28.80),-- garage
		}
	},

	Garage = {

		voiture = {
			{category = "↓ ~b~Véhicule(s) ~s~↓"},        
			{label = "Camion Ambulance", model = "lsambulance", minimum_grade = 0, restockprice = 1200},
			{label = "Voiture Ambulance", model = "ems", minimum_grade = 0, restockprice = 1500},
			{label = "Mini ambulance", model = "ambulance22", minimum_grade = 0, restockprice = 1750},
		},

		helico = {
            {category = "↓ ~b~Hélicoptère(s) ~s~↓"},                           -- Model = nom de spawn du véhicule
            {model = "polmav", label = "Hélico", minimum_grade = 0, restockprice = 11000} -- exemple here
        },

        bato = {
            {category = "↓ ~b~Bateau(x) ~s~↓"},                           -- Model = nom de spawn du véhicule
            {model = "predator", label = "Predator", minimum_grade = 0, restockprice = 12000} -- exemple here
        }

	},

	SpawnGarage = {

		VoitureNord = {
			Position = vector3(1813.57, 3684.02, 33.98),
			Heading = 301.59,
		},

		VoitureSud = {
			Position = vector3( 336.79, -580.17, 28.80),
			Heading = 340.00,
		},

		Helico = {
			Position = vector3(-428.43881225586,-334.07138061523,24.23032951355),
			Heading = 197.65,
		},

		Bato = {
			Position = vector3(-428.43881225586,-334.07138061523,24.23032951355),
			Heading = 197.65,
		},

	},

	Hash = { --- for bed interact
		{hash = "lsambulance", detection = 4.0, depth = -2.5, height = 0.5},
		{hash = "ambulance22", detection = 4.0, depth = -2.5, height = 0.5},
	},

	Tenue = {

		male = {
			bags_1 = 0, bags_2 = 0,
			tshirt_1 = 15, tshirt_2 = 0,
			torso_1 = 13, torso_2 = 3,
			arms = 92,
			pants_1 = 24, pants_2 = 5,
			bags_1 = 45,
			shoes_1 = 8, shoes_2 = 0,
			mask_1 = 0, mask_2 = 0,
			bproof_1 = 14, bproof_2 = 0,
			helmet_1 = -1, helmet_2 = 0,
			chain_1 = 0, chain_2 = 0,
			decals_1 = 0, decals_2 = 0,
		},

		female = {
			bags_1 = 0, bags_2 = 0,
			tshirt_1 = 15, tshirt_2 = 2,
			torso_1 = 65, torso_2 = 2,
			arms = 36,
			pants_1 = 38, pants_2 = 2,
			shoes_1 = 12, shoes_2 = 6,
			mask_1 = 0, mask_2 = 0,
			bproof_1 = 14, bproof_2 = 0,
			helmet_1 = -1, helmet_2 = 0,
			chain_1 = 0, chain_2 = 0,
			decals_1 = 0, decals_2 = 0
		}

	},

	Press = {
		open_menu = Keys["F1"],
		take_bed = Keys["G"],
		do_action = Keys["G"],
		out_vehicle_bed = Keys["G"],
		out_vehicle_wheelchair = Keys["H"],
		release_bed = Keys["G"],
		in_vehicle_bed = Keys["G"],
		go_out_bed = Keys["G"],
		go_out_porte = Keys["A"],
		open_f6 = Keys["F6"],
	},

	Language = {
		do_action = 'Appuyez sur ~INPUT_THROW_GRENADE~ pour faire une action',
		take_bed = "Appuyez sur ~INPUT_THROW_GRENADE~ pour prendre le lit",
		release_bed = "Appuyez sur ~INPUT_THROW_GRENADE~ pour poser le lit",
		in_vehicle_bed = "Appuyez sur ~INPUT_THROW_GRENADE~ pour mettre le lit dans le vehicule",
		out_vehicle_bed = "~INPUT_THROW_GRENADE~ Sortir le lit du véhicule",
		out_vehicle_wheelchair = "~INPUT_VEH_HEADLIGHT~ Sortir un fauteuil roulant",
		go_out_bed = "Se lever du lit",
		delete_bed = "Ranger le lit",
		lit_1 = "Lit sans matelas",
		anim = {
			spawn_command = "Civil",
			lie_back = "S\'allonger sur le dos",
			sit_right = "Se mettre sur la droite",
			sit_left = "Se mettre sur la gauche",
			convulse = "Convulser",
			pls = "Être en position de sécurité latérale",
		}
	},
}