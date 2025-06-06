AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_mp9")
SWEP.Description = ARC9:GetPhrase("eft_weapon_mp9_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_bt",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x19",
    ["eft_trivia_act3"] = "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_switzerland",
    ["eft_trivia_year5"] = "2001"
}

SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_mp9.mdl"
SWEP.DefaultBodygroups = "0000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-12, 5.4, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.29, -5, 1.45),
    Ang = Angle(0, 0.09, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.5, 0)
SWEP.CustomizePos = Vector(13.5, 40, 5)
SWEP.CustomizeSnapshotFOV = 50
SWEP.CustomizeRotateAnchor = Vector(13.5, -4.27, -5.23) 
SWEP.CustomizeSnapshotPos = Vector(0, 10, 0)

-- this thing can one hand sprint
local handupang, handuppos, handupholdtype = Angle(-2, 40, -7), Vector(0, -4, -10), "normal"
SWEP.OneHandedSprint = true
SWEP.OneHandedSprintHook = function(self, old) if self:GetValue("HasStock") then return false end end
SWEP.SprintAngHook = function(self, old) if !self:GetValue("HasStock") then return handupang end end
SWEP.SprintPosHook = function(self, old) if !self:GetValue("HasStock") then return handuppos end end
SWEP.HoldTypeSprintHook = function(self, old) if !self:GetValue("HasStock") then return handupholdtype end end

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 7.22 * ARC9.MOAToAcc
SWEP.RPM = 900
SWEP.EFTErgo = 75
SWEP.BarrelLength = 20
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, RPM = 450, PoseParam = 1 }
}

SWEP.Slot = 2

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.5   -- up recoil
SWEP.RecoilSide = 2.0 -- sideways recoil
SWEP.RecoilRandomUp   = 1.75 -- random up/down
SWEP.RecoilRandomSide = 1.5   -- random left/right

SWEP.RecoilAutoControl = 4.05 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.3 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.09   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 1.5 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.3 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -1)
SWEP.SubtleVisualRecoil = 0.75
SWEP.SubtleVisualRecoilDirection = 5
SWEP.SubtleVisualRecoilSpeed = 1.5

------------------------- |||           Damage            ||| -------------------------

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

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = false  
SWEP.MalfunctionMeanShotsToFail = 583
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.3
SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/mp9/"

SWEP.ShootSound = { path .. "fire_new/mp9_outdoor_close_loop1.wav", path .. "fire_new/mp9_outdoor_close_loop2.wav", path .. "fire_new/mp9_outdoor_close_loop3.wav", path .. "fire_new/mp9_outdoor_close_loop4.wav" }
SWEP.LayerSound = path .. "fire_new/mp9_outdoor_close_loop_tail.wav"

SWEP.ShootSoundSilenced = { path .. "fire_new/mp9_outdoor_close_loop_silenced1.wav", path .. "fire_new/mp9_outdoor_close_loop_silenced2.wav", path .. "fire_new/mp9_outdoor_close_loop_silenced3.wav", path .. "fire_new/mp9_outdoor_close_loop_silenced4.wav" }
SWEP.LayerSoundSilenced = path .. "fire_new/mp9_outdoor_close_loop_silenced_tail.wav"

SWEP.ShootSoundIndoor = { path .. "fire_new/mp9_indoor_close_loop1.wav", path .. "fire_new/mp9_indoor_close_loop2.wav", path .. "fire_new/mp9_indoor_close_loop3.wav", path .. "fire_new/mp9_indoor_close_loop4.wav" }
SWEP.LayerSoundIndoor = path .. "fire_new/mp9_indoor_close_loop_tail.wav"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/mp9_indoor_close_silenced_loop1.wav", path .. "fire_new/mp9_indoor_close_silenced_loop2.wav", path .. "fire_new/mp9_indoor_close_silenced_loop3.wav", path .. "fire_new/mp9_indoor_close_silenced_loop4.wav" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/mp9_indoor_close_silenced_loop_tail.wav"

SWEP.DistantShootSound = { path .. "fire_new/mp9_outdoor_distant_loop1.wav", path .. "fire_new/mp9_outdoor_distant_loop2.wav" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/mp9_outdoor_distant_loop_silenced1.wav", path .. "fire_new/mp9_outdoor_distant_loop_silenced2.wav" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/mp9_indoor_distant_loop1.wav", path .. "fire_new/mp9_indoor_distant_loop2.wav" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/mp9_indoor_distant_silenced_loop1.wav", path .. "fire_new/mp9_indoor_distant_silenced_loop2.wav" }

SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.53
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180-20, 0)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",
    [5] = "patron_in_mag4",
    [6] = "patron_in_mag5",
}

SWEP.SuppressEmptySuffix = true
SWEP.EFT_HasTacReloads = true 

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_mp9_mag_15"] then ending = 0
    elseif elements["eft_mp9_mag_20"] then ending = 1
    elseif elements["eft_mp9_mag_25"]  then ending = 2
    elseif elements["eft_mp9_mag_30"]  then ending = 3
    else nomag = true end

    local empty = swep:Clip1() == 0 and !nomag
    
    -- 0 looking
    -- 1 slide check  (!empty)
    -- 2 mag checking  (!nomag)
    if elements["eft_mp9n"] then
        if anim == "firemode_1" then anim = "firemode_1_n" 
        elseif anim == "firemode_2" then anim = "firemode_2_n" 
        elseif anim == "firemode_1_empty" then anim = "firemode_1_n_empty" 
        elseif anim == "firemode_2_empty" then anim = "firemode_2_n_empty" end
    end
    
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
            
            if SERVER then
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
        if swep.EFT_StartedTacReload and !empty then
            if SERVER then timer.Simple(0.3, function() if IsValid(swep) then swep:SetClip1(1) end end) end
            return "reload_tactical" .. ending
        end
        return anim .. (empty and "_empty" or "") .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER then
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
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5"
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.06},
    { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.9 },
    { s = path .. "mp7_bolt_ot_tebya.ogg", t = 1.27 },
    { s = randspin, t = 1.5 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.65},
    { s =  path .. "ak74_round_in_chamber.ogg", t = 2.35  },
    { s = "arc9_eft_shared/weap_handon.ogg", t = 2.81},
    { s = randspin, t = 2.93 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 3.4 },
    { s = randspin, t = 3.8 },
}

local rst_def01 = {
    { s = randspin, t = 0.05 },    
    { s =  path .. "mp7_mag_button.ogg", t = 0.6 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.7 },
    { s = randspin, t = 1 },
    { s = pouchin, t = 1.23 },
    { s = pouchout, t = 1.6 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.97 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 2.08 },
    { s = randspin, t = 2.42},
}

local rst_def23 = {
    { s = randspin, t = 0.05 },    
    { s =  path .. "mp7_mag_button.ogg", t = 0.6 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.7 },
    { s = randspin, t = 1 },
    { s = pouchin, t = 1.3 },
    { s = pouchout, t = 1.65 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 2.05 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 2.18 },
    { s = randspin, t = 2.57},
}

local rst_def01t = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.16 - 4/26},
    { s =  path .. "mp7_mag_button.ogg", t = 0.36 - 4/26 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.4 - 4/26 },
    { s = pouchout, t = 0.8 - 4/26 },
    { s = randspin, t = 0.9 - 4/26 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.25 - 4/26 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 1.42 - 4/26 },
    { s = randspin, t = 1.76 - 4/26 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 1.1}
}

local rst_def23t = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.16 - 4/26},
    { s =  path .. "mp7_mag_button.ogg", t = 0.36 - 4/26 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.4 - 4/26 },
    { s = randspin, t = 1.09 - 4/26 },
    { s = pouchout, t = 1.1 - 4/26 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.43 - 4/26 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 1.56 - 4/26 },
    { s = randspin, t = 1.97 - 4/26 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 1.1}
}

local rst_empty01 = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.16},
    { s =  path .. "mp7_mag_button.ogg", t = 0.36 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.4 },
    { s = pouchout, t = 0.8 },
    { s = randspin, t = 0.9 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.25 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 1.42 },
    { s = randspin, t = 1.76 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.16 },
    { s = randspin, t = 2.53 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.53},
    {hide = 0, t = 1.1}
}

local rst_empty23 = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.16},
    { s =  path .. "mp7_mag_button.ogg", t = 0.36 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.4 },
    { s = randspin, t = 1.09 },
    { s = pouchout, t = 1.1 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.43 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 1.56 },
    { s = randspin, t = 1.97 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.38 },
    { s = randspin, t = 2.75 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.53},
    {hide = 0, t = 1.1}
}

local rst_magcheck = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.1},
    { s =  path .. "mp7_mag_button.ogg", t = 0.3 },
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.53 },
    { s = randspin, t = 0.7 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.3 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 1.53 },
    { s = randspin, t = 1.9},
}
local rik_magcheck = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.82, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 0.2, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 0.95, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_single = {
    { t = 0, lhik = 1 },
    { t = 0.08, lhik = 0 },
    { t = 0.75, lhik = 0 },
    { t = 0.85, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_def = {
    { t = 0, lhik = 1 },
    { t = 0.16, lhik = 0 },
    { t = 0.9, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_empty = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 0 },
    { t = 0.68, lhik = 0 },
    { t = 0.79, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_ready = {
    { t = 0, lhik = 1 },
    { t = 0.001, lhik = 0 },
    { t = 0.7, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.65 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 0.91 },
        },
        IKTimeLine = rik_ready,
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
            { s = path .. "mp7_hammer.wav", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = path .. "mp7_hammer.wav", t = 0 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_single,
        IKTimeLine = rik_single
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def01,
        IKTimeLine = rik_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def01,
        IKTimeLine = rik_def
    },
    ["reload2"] = {
        Source = "reload2",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def23,
        IKTimeLine = rik_def
    },
    ["reload3"] = {
        Source = "reload3",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def23,
        IKTimeLine = rik_def
    },

    ["reload_tactical0"] = {
        Source = "reload0t",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def01t,
        IKTimeLine = rik_def
    },
    ["reload_tactical1"] = {
        Source = "reload1t",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def01t,
        IKTimeLine = rik_def
    },
    ["reload_tactical2"] = {
        Source = "reload2t",
        MinProgress = 0.85,
        FireASAP = true,
        DropMagAt = 0.5,
        EventTable = rst_def23t,
        IKTimeLine = rik_def
    },
    ["reload_tactical3"] = {
        Source = "reload3t",
        MinProgress = 0.85,
        FireASAP = true,
        DropMagAt = 0.5,
        EventTable = rst_def23t,
        IKTimeLine = rik_def
    },

    ["reload_empty0"] = {
        Source = "reload_empty0", 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty01,
        IKTimeLine = rik_empty
    },
    ["reload_empty1"] = {
        Source = "reload_empty1", 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty01,
        IKTimeLine = rik_empty
    },
    ["reload_empty2"] = {
        Source = "reload_empty2", 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty23,
        IKTimeLine = rik_empty,
    },
    ["reload_empty3"] = {
        Source = "reload_empty3", 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty23,
        IKTimeLine = rik_empty,
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
            { s = randspin, t = 0.09 },
            { s = randspin, t = 0.76 },
            { s =  path .. "pistol_jam_shell_remove3.ogg", t = 1.27 },
            { s = randspin, t = 1.63 },
            { s = path .. "p90_bolt_out_slow.ogg", t = 2 },
            { s = path .. "p90_bolt_in_slow.ogg", t = 2.35 },
            { s = "arc9_eft_shared/weap_handon.ogg", t = 2.64},
            { s = randspin, t = 2.7 },
            { s = ARC9EFT.Shells9mm, t = 1.9 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 0.76 },
            { s = randspin, t = 1.29 },

            { s = slidelockgrab, t = 1.8 },
            { s = slidelock, t = 2.3 },
            { s = randspin, t = 2.74 },
            { s = randspin, t = 3.43 },
            { s = slidelockgrab, t = 3.88 },
            -- { s = slidelock, t = 4.18 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 4.14 },
            -- { s =  path .. "pistol_jam_shell_remove3.ogg", t = 4.35 },
            { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 4.54 },
            { s = randspin, t = 4.79 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.19, lhik = 1 },
            { t = 0.26, lhik = 0 },
            { t = 0.9, lhik = 0 },
            { t = 0.96, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 4.35
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 0.76 },
            { s = randspin, t = 1.04 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 1.71 },
            { s = slidelock, t = 2.08 },
            { s = randspin, t = 2.62 },
            { s =  path .. "pistol_jam_shell_remove3.ogg", t = 2.6 },
            { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 3.69 },
            { s = "arc9_eft_shared/weap_handon.ogg", t = 4.02},
            { s = randspin, t = 4.16 },
            { s = ARC9EFT.Shells9mm, t = 3.15 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 0.76 },
            { s = randspin, t = 1.27 },

            { s = slidelockgrab, t = 1.71 },
            { s = randspin, t = 2.3 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 2.82 },
            -- { s =  path .. "pistol_jam_shell_remove3.ogg", t = 2.88 },
            { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 3.08 },
            { s = randspin, t = 3.25 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.27, lhik = 1 },
            { t = 0.36, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.95, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.88
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.434 },
            { s = randspin, t = 2.64 },
        },
        IKTimeLine = rik_look
    },
    ["inspect1_empty"] = {
        Source = "look_empty",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.434 },
            { s = randspin, t = 2.64 },
        },
        IKTimeLine = rik_look
    },
    

    ["inspect_mag_0"] = {
        Source = "check_0",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_0"] = {
        Source = "check_0_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_1"] = {
        Source = "check_1",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_1"] = {
        Source = "check_1_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_2"] = {
        Source = "check_2",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_2"] = {
        Source = "check_2_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_3"] = {
        Source = "check_3",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_3"] = {
        Source = "check_3_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.02},
            { s = randspin, t = 0.28 },
            { s = path .. "p90_bolt_out_slow.ogg", t = 0.61 },
            { s = path .. "p90_bolt_in_slow.ogg", t = 1.2 },
            { s = randspin, t = 1.6 },
            -- { s = "arc9_eft_shared/weap_handon.ogg", t = 1.85},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.17, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.98, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["inspect_empty0"] = {
        Source = "check_chamber_empty",
        EventTable = {
            { s = randspin, t = 0.06 },
            { s = randspin, t = 0.77 },
        },
    },

    ["firemode_1"] = {
        Source = "firemode1",
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05},
            { s = path .. "mp7_mag_button.ogg", t = 0.37 },
            -- { s = "arc9_eft_shared/weap_handon.ogg", t = 0.77},
        },
    },
    ["firemode_2"] = {
        Source = "firemode0",
        EventTable = { { s = path .. "mp7_mag_button.ogg", t = 0.27 } }
    },
    ["firemode_1_empty"] = {
        Source = "firemode1_empty",
        EventTable = {
            { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05},
            { s = path .. "mp7_mag_button.ogg", t = 0.37 },
            -- { s = "arc9_eft_shared/weap_handon.ogg", t = 0.77},
        },
    },
    ["firemode_2_empty"] = {
        Source = "firemode0_empty",
        EventTable = { { s = path .. "mp7_mag_button.ogg", t = 0.27 } }
    },
    
    ["firemode_1_n"] = {
        Source = "firemode1_n",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.45 } }
    },
    ["firemode_2_n"] = {
        Source = "firemode0_n",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.35 } }
    },
    ["firemode_1_n_empty"] = {
        Source = "firemode1_n_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.45 } }
    },
    ["firemode_2_n_empty"] = {
        Source = "firemode0_n_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.35 } }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBolt", "HasReceiver", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_mp9_silmount"] = { Bodygroups = { {6, 1} } },
    ["eft_mp9_silencer"] = { Bodygroups = { {7, 1} } },
    ["eft_mp9_stock_unfolded"] = { Bodygroups = { {10, 1} } },
    ["eft_mp9_stock_folded"] = { Bodygroups = { {10, 2} } },
    ["eft_mp9_siderail"] = { Bodygroups = { {5, 1} } },
    ["eft_mp9_bottomrail"] = { Bodygroups = { {8, 1} } },
    ["eft_mp9_fg"] = { Bodygroups = { {8, 2} } },
    ["eft_mp9_rec_std"] = { Bodygroups = { {2, 2} } },
    ["eft_mp9_rec_n"] = { Bodygroups = { {2, 1} } },
    ["eft_mp9_charge"] = { Bodygroups = { {3, 1} } },
    ["eft_mp9_rs"] = { Bodygroups = { {4, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_mp9_muzzle",
        Bone = "mod_muzzle",
        Pos = Vector(0, 0.1, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Category = "eft_mp9_rec",
        Bone = "mod_reciever",
        Installed = "eft_mp9_rec_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
        SubAttachments = {
            {},
            {
                Installed = "eft_mp9_rs"
            }
        }
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_mag_mp9",
        Bone = "mod_magazine",
        Installed = "eft_mp9_mag_30",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_mp9_stock",
        Bone = "mod_stock",
        Installed = "eft_mp9_stockk",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_charge"),
        Category = "eft_mp9_handle",
        Bone = "mod_stock",
        Installed = "eft_mp9_charge",
        Pos = Vector(0, 0, 1.7),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = "eft_mp9_bottom",
        Bone = "weapon",
        Installed = "eft_mp9_bottomrail",
        Pos = Vector(0, 19, -1.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },   
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_slot_mp9"},
        Bone = "mod_stock",
        Pos = Vector(0, -2, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}