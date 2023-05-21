
SWEP.Base					= "suburb"
SWEP.Spawnable				= true

--
-- Description
--
SWEP.PrintName				= "AKS74U"
SWEP.Category				= "Desk Kickers"
SWEP.Description			= [[5.45x39mm Carbine]]
SWEP.Trivia = {
	"Year:",
	"1979",
	"Mechanism:",
	"Gas-operated rotating bolt",
	"Country:",
	"USSR",
	"Manufacturer:",
	"IZhMASh",
}
SWEP.Slot					= 2

--
-- Appearance
--
SWEP.ViewModel				= "models/weapons/dka/c_dka_rif_74u.mdl"
SWEP.WorldModel				= "models/weapons/dka/c_dka_rif_74u.mdl"
SWEP.VMWMClone				= { Pos = Vector(), Ang = Angle(), Size = Vector() }
SWEP.ViewModelFOV			= 60

SWEP.ActivePose = {
	Pos = Vector( 0.5, -2, -1.75 ),
	Ang = Angle( 3, 0, 3 )
}
SWEP.CrouchPose = {
	Pos = Vector(-2.5, -2, -1.6),
	Ang = Angle(0, 0, -8),
	MidPos = Vector( -0.2, 0, -0.5 ),
	MidAng = Angle( 0, 0, 0 ),
}
SWEP.IronsightPose = {
	Pos = Vector( -1, -2, -1.5 ),
	Ang = Angle( 0, 0, 0 ),
	MidPos = Vector( -1.15, 2, -0.4 ),
	MidAng = Angle( -0.5, 0, -6 ),
	ViewModelFOV = 60,
	Magnification = 1.1,
}

SWEP.HoldTypeHip			= "ar2"
SWEP.HoldTypeSight			= "rpg"
SWEP.HoldTypeSprint			= "passive"

local p0 = ")arccw_uc/common/"
local p1 = ")weapons/ak74/"
local tail = ")/arccw_uc/common/556x45/"
SWEP.Sound_Blast			= {
	{ s = p1.."aks74u_fire_01.wav" },
	{ s = p1.."aks74u_fire_02.wav" },
	{ s = p1.."aks74u_fire_03.wav" }
}
SWEP.Sound_Mech				= {
	{ s = p1.."mech-01.ogg" },
	{ s = p1.."mech-02.ogg" },
	{ s = p1.."mech-03.ogg" },
	{ s = p1.."mech-04.ogg" },
	{ s = p1.."mech-05.ogg" },
	{ s = p1.."mech-06.ogg" },
}
SWEP.Sound_TailEXT				= {
	{ s = tail.."fire-dist-556x45-rif-ext-01.ogg" },
	{ s = tail.."fire-dist-556x45-rif-ext-02.ogg" },
	{ s = tail.."fire-dist-556x45-rif-ext-03.ogg" },
	{ s = tail.."fire-dist-556x45-rif-ext-04.ogg" },
	{ s = tail.."fire-dist-556x45-rif-ext-05.ogg" },
	{ s = tail.."fire-dist-556x45-rif-ext-06.ogg" },
}
SWEP.Sound_TailINT				= {
	{ s = tail.."fire-dist-556x45-rif-int-01.ogg" },
	{ s = tail.."fire-dist-556x45-rif-int-02.ogg" },
	{ s = tail.."fire-dist-556x45-rif-int-03.ogg" },
	{ s = tail.."fire-dist-556x45-rif-int-04.ogg" },
	{ s = tail.."fire-dist-556x45-rif-int-05.ogg" },
	{ s = tail.."fire-dist-556x45-rif-int-06.ogg" },
}

SWEP.MuzzleEffect						= "muzzleflash_1"
SWEP.QCA_Muzzle							= 1

SWEP.ShellModel							= "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale							= 0.5
SWEP.QCA_Case							= 2

SWEP.QCA_Camera							= 0
SWEP.CameraCorrection					= Angle( 0, 0, 0 )

--
-- Functionality
--
SWEP.Primary.Ammo			= "smg1"
SWEP.Primary.ClipSize		= 30
SWEP.ChamberSize			= 0
SWEP.Delay					= ( 60 / 700 )

SWEP.Firemodes				= {
	{
		Mode = math.huge,
	},
	{
		Mode = 3,
	},
}
SWEP.SwayCorrection = 0.45

SWEP.Accuracy				= 0

SWEP.Dispersion				= 2
SWEP.Dispersion_Air			= 1.5
SWEP.Dispersion_Move		= 1.5
SWEP.Dispersion_Crouch		= 0.75
SWEP.Dispersion_Sights		= 0

SWEP.SightTime				= 0.4
SWEP.SprintTime				= 0.2

--
-- Recoil
--
SWEP.RecoilUp				= 1
SWEP.RecoilSide				= 0.5
SWEP.RecoilPunch			= 1
SWEP.RecoilSwing			= 0
SWEP.RecoilDrift			= 0.75
SWEP.RecoilDecay			= 10

SWEP.UniversalAnimationInfo = {
	bone = "m16_parent",
	pos = Vector( 0, 0, 0 ),
	ang = Angle( 0, 0, 0 ),
}

--
-- Damage
--
SWEP.DamageNear				= 33
SWEP.RangeNear				= 50
SWEP.DamageFar				= 15
SWEP.RangeFar				= 300
SWEP.Force					= 5
SWEP.Penetration			= 2

--
-- Animation
--
SWEP.Animations				= {
	["idle"]	= {
		Source = "idle",
	},
	["idle_empty"]	= {
		Source = "idle_empty",
	},
	["draw"]	= {
		Source = "draw",
		ReloadingTime = 0.3,
		StopSightTime = 0.1,
	},
	["draw_empty"]	= {
		Source = "draw_empty",
		ReloadingTime = 0.3,
		StopSightTime = 0.1,
	},
	["holster"]	= {
		Source = "holster",
		Time = 0.5,
		HolsterTime = 0.2,
	},
	["holster_empty"]	= {
		Source = "holster_empty",
		Time = 0.5,
		HolsterTime = 0.2,
	},
	["fire"]	= {
		Source = "fire",
		ShellEjectTime = 0,
	},
	["fire_empty"] = {
		Source = "fire_empty",
		ShellEjectTime = 0,
	},
	["reload"]	= {
		Source = "reload",
		Time = 2.4,
		Events = {
			{ t = 0.1,			s = p0.."magpouch_gear.ogg" },
			{ t = 0.2,			s = p1.."magout_empty.ogg" },
			{ t = 1.0,			s = p1.."struggle.ogg" },
			{ t = 0.95,			s = p1.."magin.ogg" },
			{ t = 1.77,			s = p0.."grab-polymer.ogg" },
			{ t = 1.8,			s = p0.."shoulder.ogg" },

			{ t = 0.0,			s = Ssnd.rottle },
			{ t = 0.25,			s = Ssnd.rattle },
			{ t = 0.5,			s = Ssnd.rattle },
			{ t = 1.1,			s = Ssnd.rattle },
			{ t = 1.39,			s = Ssnd.rottle },
			{ t = 1.9,			s = Ssnd.rattle },
		},
		ReloadingTime = 2.0,
		LoadIn = 1.5,
	},
	["reload_empty"] = {
		Source = "reload_empty",
		Time = 2.9,
		Events = {
			{ t = 0.1,			s = p0.."magpouch_gear.ogg" },
			{ t = 0.2,			s = p1.."magout_empty.ogg" },
			{ t = 0.95,			s = p1.."struggle.ogg" },
			{ t = 0.95,			s = p1.."magin.ogg" },
			{ t = 1.7,			s = p1.."boltdrop.ogg" },
			{ t = 2.2,			s = p0.."grab-polymer.ogg" },
			{ t = 2.3,			s = p0.."shoulder.ogg" },

			{ t = 0.0,			s = Ssnd.rottle },
			{ t = 0.25,			s = Ssnd.rattle },
			{ t = 0.5,			s = Ssnd.rattle },
			{ t = 1.1,			s = Ssnd.rattle },
			{ t = 1.39,			s = Ssnd.rottle },
			{ t = 1.9,			s = Ssnd.rattle },
		},
		ReloadingTime = 2.4,
		LoadIn = 2.0,
	},
}

SWEP.Attachments = {
}

SWEP.Elements = {}