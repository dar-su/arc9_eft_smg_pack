AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_kedr")
SWEP.Description = "eft_weapon_kedr_desc"

SWEP.Class = "eft_class_weapon_smg"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_zmz",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x18",
    ["eft_trivia_act3"] = "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_ussr",
    ["eft_trivia_year5"] = "1951"
}

SWEP.StandardPresets = {
    "[Kedr-B]XQAAAQANAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD2BHq79UsLb0WwNhJj8r3aZ6jZerClRIKLNh6mcxiFHlOIVZ4gvYvAdtLM0DD51m7/t6Me+RKK08elNQaJSY0ZGALaI9igo2IT1hsB/fkFo8H5EgCELJ3oq739viSDtmbi1hfa2VPTVAM26xJRMLMA"
}

SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_kedr.mdl"
SWEP.DefaultBodygroups = "00000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-9.8, 5.4, -4.8),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.2725, -5, 1.3),
    Ang = Angle(0, -0.075, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.5, 0)
SWEP.CustomizePos = Vector(15, 40, 5)
SWEP.CustomizeSnapshotFOV = 50
SWEP.CustomizeRotateAnchor = Vector(14, -4.27, -5.23) 
SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 7.22 * ARC9.MOAToAcc
SWEP.RPM = 900
SWEP.EFTErgo = 65
SWEP.BarrelLength = 22
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, RPM = 450, PoseParam = 1 }
}

SWEP.Slot = 2
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- no single reloads

-- this thing can one hand sprint
local handupang, handuppos, handupholdtype = Angle(-2, 40, -7), Vector(0, -4, -10), "normal"
SWEP.OneHandedSprint = true
SWEP.OneHandedSprintHook = function(self, old) if self:GetValue("HasStock") then return false end end
SWEP.SprintAngHook = function(self, old) if !self:GetValue("HasStock") then return handupang end end
SWEP.SprintPosHook = function(self, old) if !self:GetValue("HasStock") then return handuppos end end
SWEP.HoldTypeSprintHook = function(self, old) if !self:GetValue("HasStock") then return handupholdtype end end

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.2   -- up recoil
SWEP.RecoilSide = 2.0 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 0.6   -- random left/right

SWEP.RecoilAutoControl = 3.75 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.3 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.09   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1.5 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 1.0 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.1 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -1)
SWEP.SubtleVisualRecoil = 0.75
SWEP.SubtleVisualRecoilDirection = 5
SWEP.SubtleVisualRecoilSpeed = 1.5

------------------------- |||           Damage            ||| -------------------------

-- pst dmg

SWEP.DamageMax = 50 * 0.5
SWEP.DamageMin = 31.45 * 0.5
SWEP.PhysBulletMuzzleVelocity = 298 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      12 *2.54/100/0.0254
SWEP.PenetrationDelta = 26/100
SWEP.ArmorPiercing =    26/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    50 * 0.5     },

    {   100 /0.0254 * 1, 
    46 * 0.5     },

    {   200 /0.0254 * 1, 
    43 * 0.5     },

    {   300 /0.0254 * 1, 
    40.75 * 0.5     },

    {   400 /0.0254 * 1, 
    38.73 * 0.5     },

    {   500 /0.0254 * 1, 
    37 * 0.5     },

    {   600 /0.0254 * 1, 
    35.4 * 0.5     },

    {   700 /0.0254 * 1, 
    34 * 0.5     },

    {   800 /0.0254 * 1, 
    33 * 0.5     },

    {   900 /0.0254 * 1, 
    32 * 0.5     },

    {   1000 /0.0254 * 1, 
    31.45 * 0.5     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionMeanShotsToFail = 582
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.36
SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x18pm.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_kedr_conv_klin"] then return ARC9:GetPhrase("eft_weapon_klin")
    elseif elements["eft_kedr_conv_b"] then return ARC9:GetPhrase("eft_weapon_kedrb") end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_kedr_conv_klin"] then return "eft_weapon_klin_desc"
    elseif elements["eft_kedr_conv_b"] then return "eft_weapon_kedrb_desc" end
end

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/kedr/"

SWEP.ShootSound = { path .. "kedr_loop_close1.ogg", path .. "kedr_loop_close2.ogg", path .. "kedr_loop_close3.ogg", path .. "kedr_loop_close4.ogg" }
SWEP.LayerSound = path .. "kedr_loop_closet.ogg"

SWEP.ShootSoundSilenced = { path .. "kedr_loop_silenced_close1.ogg", path .. "kedr_loop_silenced_close2.ogg", path .. "kedr_loop_silenced_close3.ogg", path .. "kedr_loop_silenced_close4.ogg" }
SWEP.LayerSoundSilenced = path .. "kedr_loop_silenced_closet.ogg"

SWEP.ShootSoundIndoor = { path .. "kedr_loop_indoor_close1.ogg", path .. "kedr_loop_indoor_close2.ogg", path .. "kedr_loop_indoor_close3.ogg", path .. "kedr_loop_indoor_close4.ogg" }
SWEP.LayerSoundIndoor = path .. "kedr_loop_indoor_closet.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "kedr_loop_silenced_indoor_close1.ogg", path .. "kedr_loop_silenced_indoor_close2.ogg", path .. "kedr_loop_silenced_indoor_close3.ogg", path .. "kedr_loop_silenced_indoor_close4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "kedr_loop_silenced_indoor_closet.ogg"

SWEP.DistantShootSound = { path .. "kedr_loop_distant1.ogg", path .. "kedr_loop_distant2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "kedr_loop_silenced_distant1.ogg", path .. "kedr_loop_silenced_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "kedr_loop_indoor_distant1.ogg", path .. "kedr_loop_indoor_distant2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "kedr_loop_silenced_indoor_distant1.ogg", path .. "kedr_loop_silenced_indoor_distant2.ogg" }

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineTime = 0.73
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180-20, 0)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)

------------------------- |||           Animations            ||| -------------------------

SWEP.SuppressEmptySuffix = true

SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
}

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_kedr_mag_20"] then ending = 0
    elseif elements["eft_kedr_mag_30"] then ending = 0 -- :P
    else nomag = true end

    local empty = swep:Clip1() == 0 and !nomag
    
    -- 0 looking
    -- 1 slide check  (!empty)
    -- 2 mag checking  (!nomag)
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        
        -- if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end
        
        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(false) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            ending = rand
        end
        
        return anim .. ending
    elseif anim == "reload" then
        return anim .. (empty and "_empty" or "") .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end
    
    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
    -- return anim
end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
    },
}

local path = "weapons/darsu_eft/kedr/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_def01 = {
    { s = randspin, t = 0.05 },    
    { s =  path .. "kedr_magrelease_button.ogg", t = 0.4 },
    { s =  path .. "kedr_magout.ogg", t = 0.55-0.1 },
    { s = randspin, t = 0.82 },
    { s = pouchin, t = 0.93 },
    { s = pouchout, t = 1.2 },
    { s =  path .. "kedr_magin.ogg", t = 2.03-0.05 },
    { s = randspin, t = 2.42},
}

local rst_empty01 = {
    { s = randspin, t = 0.05 },    
    { s =  path .. "kedr_magrelease_button.ogg", t = 0.31 },
    { s =  path .. "kedr_magout.ogg", t = 0.49-0.1 },
    { s = randspin, t = 0.75 },
    { s = pouchout, t = 1.2 },
    { s =  path .. "kedr_magin.ogg", t = 1.74-0.05 },
    { s = randspin, t = 2.34},
    { s =  path .. "kedr_trigger_empty.ogg", t = 2.61 },
    { s =  path .. "kedr_slider_up.ogg", t = 2.73 },
    { s = randspin, t = 2.92},
    {hide = 0, t = 0},
    {hide = 1, t = 0.73},
    {hide = 0, t = 1.2}
}
local rst_magcheck = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.06},
    { s =  path .. "kedr_magrelease_button.ogg", t = 0.2 },
    { s =  path .. "kedr_magout.ogg", t = 0.48-0.1 },
    { s = randspin, t = 0.68 },
    { s = randspin, t = 1.59 },
    { s =  path .. "kedr_magin.ogg", t = 1.89-0.05 },
    { s = randspin, t = 2.3},
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "kedr_slider_down.ogg", t = 0.58 },
            { s = path .. "kedr_slider_up.ogg", t = 0.84 },
        },
    },


    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },

    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = path .. "kedr_trigger_hammer.ogg", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = path .. "kedr_trigger_hammer.ogg", t = 0 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
        EventTable = {
            { s = path .. "kedr_trigger_empty.ogg", t = 0 },
        }
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
        EventTable = {
            { s = path .. "kedr_trigger_empty.ogg", t = 0 },
        }
    },

    ["reload"] = {
        Source = "reload_single", -- there is no such anim wawa
        MinProgress = 0.85,
        FireASAP = true,
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def01,
    },

    ["reload_empty0"] = {
        Source = "reload_empty0", 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty01,
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.77 },
            { s = randspin, t = 1.22 },
            { s = slidelockgrab, t = 1.7 },
            { s = randspin, t = 2.15 },
            { s =  "weapons/darsu_eft/generic_pistol/generic_jam_shell_ remove_medium3.ogg", t = 2.56 },
            { s =  path .. "kedr_slider_down_slow.ogg", t = 2.3 },
            { s = randspin, t = 3.03 },

            { s = ARC9EFT.Shells9mm, t = 3.3 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.77 },
            { s = randspin, t = 1.2 },
            { s = slidelockgrab, t = 1.87 },
            { s = slidelock, t = 2.2 },
            { s = randspin, t = 2.67 },
            { s = slidelock, t = 3.19 },
            { s = randspin, t = 3.65 },
            { s = slidelockgrab, t = 3.91 },
            { s = slidelockgrab, t = 4.48 },
            { s =  path .. "kedr_slider_jam.ogg", t = 4.98 },
            { s = path .. "kedr_slider_up.ogg", t = 5.44 },
            { s =  "weapons/darsu_eft/generic_pistol/generic_jam_shell_ remove_medium3.ogg", t = 5.07 },
            { s = randspin, t = 5.69 },
        },
        EjectAt = 5.07
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.77 },
            { s = randspin, t = 1.38 },
            { s = slidelockgrab, t = 1.55 },
            { s = slidelock, t = 1.91 },
            { s =  path .. "kedr_slider_jam.ogg", t = 2.51 },
            { s = randspin, t = 2.97 },
            { s =  "weapons/darsu_eft/generic_pistol/generic_jam_shell_ remove_medium3.ogg", t = 3.32 },
            { s = randspin, t = 3.83 },
            { s = path .. "kedr_slider_up.ogg", t = 4.11 },
            { s = randspin, t = 4.35 },

            { s = ARC9EFT.Shells9mm, t = 4.2 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.77 },
            { s = randspin, t = 1.2 },
            { s = slidelockgrab, t = 1.66 },
            { s = slidelock, t = 2.22 },
            { s = randspin, t = 2.64 },
            { s = slidelockgrab, t = 2.95 },
            { s =  path .. "kedr_slider_jam.ogg", t = 3.35 },
            { s =  "weapons/darsu_eft/generic_pistol/generic_jam_shell_ remove_medium3.ogg", t = 3.43 },
            { s = path .. "kedr_slider_up.ogg", t = 3.67 },
            { s = randspin, t = 3.94 },
        },
        EjectAt = 3.43
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },
    ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle_empty",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.35 },
            { s = randspin, t = 2.46 },
        },
    },
    ["inspect1_empty"] = {
        Source = "look_empty",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.35 },
            { s = randspin, t = 2.46 },
        },
    },
    

    ["inspect_mag_0"] = {
        Source = "check_0",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_0"] = {
        Source = "check_0_empty",
        EventTable = rst_magcheck,
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.1},
            { s = randspin, t = 0.25 },
            { s = path .. "kedr_slider_up_slow.ogg", t = 0.55 },
            { s = path .. "kedr_slider_down_slow.ogg", t = 1.04 },
            { s = randspin, t = 1.22 },
            -- { s = "arc9_eft_shared/weap_handon.ogg", t = 1.85},
        },
    },
    ["inspect_empty0"] = {
        Source = "check_chamber_empty",
        EventTable = {
            { s = randspin, t = 0.06 },
            { s = randspin, t = 0.81 },
        },
    },

    ["firemode_1"] = {
        Source = "firemode1",
        EventTable = {
            { s = path .. "kedr_fireselector_up.ogg", t = 0.3 },
        },
    },
    ["firemode_2"] = {
        Source = "firemode0",
        EventTable = {
            { s = path .. "kedr_fireselector_down.ogg", t = 0.3 },
        },
    },
    ["firemode_1_empty"] = {
        Source = "firemode1_empty",
        EventTable = {
            { s = path .. "kedr_fireselector_up.ogg", t = 0.3 },
        },
    },
    ["firemode_2_empty"] = {
        Source = "firemode0_empty",
        EventTable = {
            { s = path .. "kedr_fireselector_down.ogg", t = 0.3 },
        },
    },
}


------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasGrip", "HasAmmoooooooo" }
SWEP.HasStock = true

SWEP.AttachmentElements = {
    ["eft_kedr_silmount"] = { Bodygroups = { {1, 2} } },
    ["eft_kedr_silencer"] = { Bodygroups = { {2, 1} } },
    ["eft_kedr_pg"] = { Bodygroups = { {3, 1} } },
    ["eft_mount_kedr_ris"] = { Bodygroups = { {1, 1} } },

    ["eft_kedr_conv_b"] = { Bodygroups = { {0, 2} } },
    ["eft_kedr_conv_klin"] = { Bodygroups = { {0, 1} } },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model
    
    if eles["eft_kedr_stockk"] then
        if eles["eft_kedr_conv_b"] then mdl:SetBodygroup(4, 5)
        elseif eles["eft_kedr_conv_klin"] then mdl:SetBodygroup(4, 3)
        else mdl:SetBodygroup(4, 1) end
    end
end

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
        Category = "eft_kedr_muzzle",
        Bone = "mod_mount",
        Pos = Vector(0, 0.1, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        RequireElements = {"eft_kedr_conv_b"},
    },
    {
        PrintName = "Mount",
        Category = "eft_mount_kedr",
        Bone = "mod_mount",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
        ExcludeElements = {"eft_kedr_conv_b"},
    },
    {
        PrintName = "Pistol grip",
        Category = "eft_kedr_pgrip",
        Bone = "mod_pistol_grip",
        Installed = "eft_kedr_pg",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x18",
        Integral = "eft_ammo_9x18_pst",
        Installed = "eft_ammo_9x18_pst",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2.5),
    },
    {
        PrintName = "Magazine",
        Category = "eft_mag_kedr",
        Bone = "mod_magazine",
        Installed = "eft_kedr_mag_30",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_kedr_stock",
        Bone = "weapon_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Conversion",
        Category = "eft_kedr_conv",
        Bone = "weapon_stock",
        Pos = Vector(0, -0, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_kedr"},
        Bone = "weapon_stock",
        Pos = Vector(0, -2, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}