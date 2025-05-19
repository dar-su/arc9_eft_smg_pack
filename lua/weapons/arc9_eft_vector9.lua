
--copy of arc9_eft_vector45 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_vector45"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_vector9")
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_vector_9.mdl"

SWEP.Description = ARC9:GetPhrase("eft_weapon_vector9_desc")

-- default pst ghz

SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}


SWEP.RPM = 950

SWEP.Recoil = 0.525 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.2   -- up recoil
SWEP.RecoilSide = 2.0 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 0.9   -- random left/right

SWEP.RecoilAutoControl = 5.0 -- autocompenstaion, could be cool if set to high but it also affects main recoil

SWEP.SubtleVisualRecoil = 0.5

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"

local path = "weapons/darsu_eft/vector/"

SWEP.ShootSound = { path .. "fire_new/vector_9mm_outdoor_close1.ogg", path .. "fire_new/vector_9mm_outdoor_close2.ogg", path .. "fire_new/vector_9mm_outdoor_close3.ogg", path .. "fire_new/vector_9mm_outdoor_close4.ogg" }
SWEP.LayerSound = path .. "fire_new/vector_9mm_outdoor_close_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/vector_9mm_outdoor_silenced_close1.ogg", path .. "fire_new/vector_9mm_outdoor_silenced_close2.ogg", path .. "fire_new/vector_9mm_outdoor_silenced_close3.ogg", path .. "fire_new/vector_9mm_outdoor_silenced_close4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/vector_9mm_outdoor_silenced_close_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/vector_9mm_indoor_close1.ogg", path .. "fire_new/vector_9mm_indoor_close2.ogg", path .. "fire_new/vector_9mm_indoor_close3.ogg", path .. "fire_new/vector_9mm_indoor_close4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/vector_9mm_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/vector_9mm_indoor_silenced_close1.ogg", path .. "fire_new/vector_9mm_indoor_silenced_close2.ogg", path .. "fire_new/vector_9mm_indoor_silenced_close3.ogg", path .. "fire_new/vector_9mm_indoor_silenced_close4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/vector_9mm_indoor_silenced_close_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/vector_9mm_outdoor_distant1.ogg", path .. "fire_new/vector_9mm_outdoor_distant2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/vector_9mm_outdoor_silenced_distant1.ogg", path .. "fire_new/vector_9mm_outdoor_silenced_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/vector_9mm_indoor_distant1.ogg", path .. "fire_new/vector_9mm_indoor_distant2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/vector_9mm_indoor_silenced_distant1.ogg", path .. "fire_new/vector_9mm_indoor_silenced_distant2.ogg" }

SWEP.DefaultElements = {"eft_vector9"} -- owo

SWEP.Attachments = {
    {
        Category = "eft_vector9_barrel",
        Installed = "eft_barrel_vector9_5",
        SubAttachments = {
            {
                Installed = "eft_muzzle_vector9_cap"
            }
        },
    }, _, _, _,
    {
        Category = "eft_ammo_9x19",
        Installed = "eft_ammo_9x19_pst_gzh",
    },
    {
        Category = "eft_g17_mag",
        Installed = "eft_mag_g17_std_17",
    },
}