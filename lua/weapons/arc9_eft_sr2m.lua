AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_veresk")
SWEP.Description = ARC9:GetPhrase("eft_weapon_veresk_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_tsniitochmash",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x21",
    ["eft_trivia_act3"] = "eft_trivia_act_gas",
    ["eft_trivia_country4"] = "eft_trivia_country_ru",
    ["eft_trivia_year5"] = "2004"
}

SWEP.StandardPresets = {
    "[FSB]XQAAAQCWAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD858hFKrq+xXePmJfpPpQndI9fB5smK9tq7fFmw9sMkVWQ2HJtxt0Qgd5jA4HM51gXvvn0DN6Pkvjr68H+JzPQdkcgYThCcRXnJexa5btl0H33kvxEpjKOsa1fxjRXtfg1RvgScrgUCvJongbG/5LNTFaaG0KGqZwWb9JTfgilaREHvAqF3Kf4IlobOAA=",
    "[TAC]XQAAAQDhAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD858hFKrq+xXePmJfpPpQndI9fB5smK9tq7fFmw9sMkVWQ2HJtxt0Qgd5jA4HM51gXzhvulynGekGJGVIhcLPf+Jv5hRTEj/HRIyfj/4fUjQFyIXiWDKV2GlLiAh7p5tvo7ZKlYWztA1uHgzjrTpMcHxP3Tj0fPr+FlSMab65nVHwyUJyvLCLAmd6v4YOxx0xwtWTP2xvgV16YtKzG+/uDPGDC9p6PMe/mYAA="
}

SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_sr2m.mdl"
SWEP.DefaultBodygroups = "0000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -7, 1.3),
    Ang = Angle(0, -0.01, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.27)
SWEP.CustomizePos = Vector(17, 40, 4)
SWEP.CustomizeSnapshotFOV = 50
SWEP.CustomizeRotateAnchor = Vector(17, -4.27, -5.23) 
SWEP.CustomizeSnapshotPos = Vector(0, 20, 0)

-- this thing can one hand sprint
local handupang, handuppos, handupholdtype = Angle(-2, 40, -7), Vector(0, -4, -10), "normal"
SWEP.OneHandedSprint = true
SWEP.OneHandedSprintHook = function(self, old) if self:GetValue("HasStock") then return false end end
SWEP.SprintAngHook = function(self, old) if !self:GetValue("HasStock") then return handupang end end
SWEP.SprintPosHook = function(self, old) if !self:GetValue("HasStock") then return handuppos end end
SWEP.HoldTypeSprintHook = function(self, old) if !self:GetValue("HasStock") then return handupholdtype end end

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 7.9 * ARC9.MOAToAcc
SWEP.RPM = 950
SWEP.EFTErgo = 59
SWEP.BarrelLength = 20
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, RPM = 450, PoseParam = 1 }
}

SWEP.Slot = 2

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.8   -- up recoil
SWEP.RecoilSide = 2.0 -- sideways recoil
SWEP.RecoilRandomUp   = 2.0 -- random up/down
SWEP.RecoilRandomSide = 0.6   -- random left/right

SWEP.RecoilAutoControl = 2.5 -- autocompenstaion, could be cool if set to high but it also affects main recoil

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
SWEP.VisualRecoilPositionBumpUp = -0.15 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -1)
SWEP.SubtleVisualRecoil = 1.0
SWEP.SubtleVisualRecoilDirection = 5
SWEP.SubtleVisualRecoilSpeed = 1.25

------------------------- |||           Damage            ||| -------------------------

-- default pst ghz
SWEP.DamageMax = 49 * 0.5
SWEP.DamageMin = 42.45 * 0.5
SWEP.PhysBulletMuzzleVelocity = 413 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      18 *2.54/100/0.0254
SWEP.PenetrationDelta = 44/100
SWEP.ArmorPiercing =    44/100
SWEP.RicochetChance =   20/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    65 * 0.5     },

    {   100 /0.0254 * 1, 
    57.8 * 0.5     },

    {   200 /0.0254 * 1, 
    54.4 * 0.5     },

    {   300 /0.0254 * 1, 
    52 * 0.5     },

    {   400 /0.0254 * 1, 
    50 * 0.5     },

    {   500 /0.0254 * 1, 
    48.44 * 0.5     },

    {   600 /0.0254 * 1, 
    47 * 0.5     },

    {   700 /0.0254 * 1, 
    45.7 * 0.5     },

    {   800 /0.0254 * 1, 
    44.5 * 0.5     },

    {   900 /0.0254 * 1, 
    43.4 * 0.5     },

    {   1000 /0.0254 * 1, 
    42.45 * 0.5     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = false
SWEP.MalfunctionMeanShotsToFail = 870
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.8
SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x21.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = ")weapons/darsu_eft/sr2m/"

SWEP.ShootSound = { path .. "fire_new/sr2m_outdoor_close_loop1.wav", path .. "fire_new/sr2m_outdoor_close_loop2.wav", path .. "fire_new/sr2m_outdoor_close_loop3.wav", path .. "fire_new/sr2m_outdoor_close_loop4.wav" }
SWEP.LayerSound = path .. "fire_new/sr2m_outdoor_close_loop_tail.wav"

SWEP.ShootSoundSilenced = { path .. "fire_new/sr2m_outdoor_close_loop_silenced1.wav", path .. "fire_new/sr2m_outdoor_close_loop_silenced2.wav", path .. "fire_new/sr2m_outdoor_close_loop_silenced3.wav", path .. "fire_new/sr2m_outdoor_close_loop_silenced4.wav" }
SWEP.LayerSoundSilenced = path .. "fire_new/sr2m_outdoor_close_loop_tail.wav"

SWEP.ShootSoundIndoor = { path .. "fire_new/sr2m_indoor_close_loop1.wav", path .. "fire_new/sr2m_indoor_close_loop2.wav", path .. "fire_new/sr2m_indoor_close_loop3.wav", path .. "fire_new/sr2m_indoor_close_loop4.wav" }
SWEP.LayerSoundIndoor = path .. "fire_new/sr2m_indoor_close_loop_tail.wav"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/sr2m_indoor_close_loop_silenced1.wav", path .. "fire_new/sr2m_indoor_close_loop_silenced2.wav", path .. "fire_new/sr2m_indoor_close_loop_silenced3.wav", path .. "fire_new/sr2m_indoor_close_loop_silenced4.wav" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/sr2m_indoor_close_loop_silenced_tail.wav"

SWEP.DistantShootSound = { path .. "fire_new/sr2m_outdoor_distant_loop1.wav", path .. "fire_new/sr2m_outdoor_distant_loop2.wav", path .. "fire_new/sr2m_outdoor_distant_loop3.wav", path .. "fire_new/sr2m_outdoor_distant_loop4.wav" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/sr2m_outdoor_distant_loop_silenced1.wav", path .. "fire_new/sr2m_outdoor_distant_loop_silenced2.wav", path .. "fire_new/sr2m_outdoor_distant_loop_silenced3.wav", path .. "fire_new/sr2m_outdoor_distant_loop_silenced4.wav" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/sr2m_indoor_distant_loop1.wav", path .. "fire_new/sr2m_indoor_distant_loop2.wav", path .. "fire_new/sr2m_indoor_distant_loop3.wav", path .. "fire_new/sr2m_indoor_distant_loop4.wav" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/sr2m_indoor_distant_loop_silenced1.wav", path .. "fire_new/sr2m_indoor_distant_loop_silenced2.wav", path .. "fire_new/sr2m_indoor_distant_loop_silenced3.wav", path .. "fire_new/sr2m_indoor_distant_loop_silenced4.wav" }

SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.74
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180, 0)
SWEP.DropMagazineVelocity = Vector(15, 30, 30)

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
}

SWEP.SuppressEmptySuffix = true
SWEP.EFT_HasTacReloads = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_sr2m_mag_20"] then ending = 0
    elseif elements["eft_sr2m_mag_30"] then ending = 1
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
            
            if SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(false) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag and rand == 2 then 
                if swep:Clip1() == 1 then return "trick" else rand = 0 end end
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
        local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        
        -- swep.EFTInspectnum = swep.EFTInspectnum or 0
        -- if IsFirstTimePredicted() then
        --     swep.EFTInspectnum = swep.EFTInspectnum + 1
        -- end
        -- local rand = swep.EFTInspectnum
        -- if rand == 5 then swep.EFTInspectnum = 1 rand = 1 end

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
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3"
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.1 },
    { s =  path .. "kedr_magrelease_button.wav", t = 0.37 },
    { s =  path .. "sr2m_mag_out.ogg", t = 0.46 },
    { s =  path .. "sr2m_flip_01.ogg", t = 1.86 },
    { s =  path .. "sr2m_mag_in_rattle.ogg", t = 2.03-0.1 },
    { s =  path .. "sr2m_mag_in.ogg", t = 2.36-0.15 },
    { s =  path .. "sr2m_flip_02.ogg", t = 2.92 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.04 },
}
local rik_magcheck = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 0 },
    { t = 0.8, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_def = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_empty = {
    { t = 0, lhik = 1 },
    { t = 0.12, lhik = 0 },
    { t = 0.62, lhik = 0 },
    { t = 0.72, lhik = 1 },
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
        RareSource = {"tooidle0", "tooidle1", "tooidle2"},
        RareSourceChance = 0.0001,
    },
    ["idle_sights"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "mp7_glip_on.ogg", t = 0.45 },
            { s = path .. "sr2m_hand_out.ogg", t = 0.69 },
            { s = path .. "sr2m_flip_01.ogg", t = 0.74 },
            { s = path .. "sr2m_slider_out.ogg", t = 1.08 },
            { s = path .. "sr2m_slider_in.ogg", t = 1.24 },
            { s = path .. "sr2m_flip_02.ogg", t = 1.49 },
            { s = path .. "sr2m_hand_02.ogg", t = 1.74 },
        },
        IKTimeLine = rik_ready,
    },


    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "mp7_glip_on.ogg", t = 0.46 },
            { s = path .. "sr2m_hand_01.ogg", t = 0.79 },
        }
    },

    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s = path .. "sr2m_hand_out.ogg", t = 0.06 },
            { s = path .. "mp7_glip_off.ogg", t = 0.29 },
            { s =  "arc9_eft_shared/weap_out.ogg", t = 0.61 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = { { s = path .. "kedr_trigger_hammer.wav", t = 0 } }
    },

    ["dryfire"] = {
        Source = "fire_dry",
        EventTable = { { s = path .. "kedr_trigger_empty.wav", t = 0 } }
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.92,
        FireASAP = true,
        EventTable = {
            { s = path .. "sr2m_hand_out.ogg", t = 0.05 },
            { s = path .. "sr2m_slider_out.ogg", t = 0.46 },
            { s = path .. "sr2m_flip_01.ogg", t = 0.82 },
            { s = path .. "sr2m_hand_out.ogg", t = 0.85 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.17},
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 1.84 },
            { s = path .. "sr2m_hand_02.ogg", t = 2.57 },
            { s = path .. "sr2m_slider_in.ogg", t = 2.81 },
            { s = path .. "sr2m_hand_01.ogg", t = 2.81 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.07, lhik = 0 },
            { t = 0.93, lhik = 0 },
            { t = 1, lhik = 1 },
        }
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.92,
        FireASAP = true,
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.04 },
            { s =  path .. "kedr_magrelease_button.wav", t = 0.27 },
            { s =  path .. "sr2m_mag_out.ogg", t = 0.29 },
            { s = pouchin, t = 0.91 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.96 },
            { s = pouchout, t = 1.46 },
            { s =  path .. "sr2m_flip_01.ogg", t = 1.68 },
            { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.94 },
            { s =  path .. "sr2m_mag_in.ogg", t = 2.25 },
            { s =  path .. "sr2m_hand_02.ogg", t = 2.92 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.9},
            {hide = 0, t = 1.5}
        },
        IKTimeLine = rik_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.92,
        FireASAP = true,
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.04 },
            { s =  path .. "kedr_magrelease_button.wav", t = 0.27 },
            { s =  path .. "sr2m_mag_out.ogg", t = 0.29 },
            { s = pouchin, t = 0.91+0.05 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.96+0.05 },
            { s = pouchout, t = 1.46+0.1 },
            { s =  path .. "sr2m_flip_01.ogg", t = 1.68+0.1 },
            { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.94+0.1 },
            { s =  path .. "sr2m_mag_in.ogg", t = 2.35+0.0 },
            { s =  path .. "sr2m_hand_02.ogg", t = 2.92+0.1 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.9},
            {hide = 0, t = 1.5+0.1}
        },
        IKTimeLine = rik_def
    },
    ["reload_tactical0"] = {
        Source = "reload0t",
        MinProgress = 0.92,
        FireASAP = true,
        DropMagAt = 0.74- 4/25,
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.06 - 4/25 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.07  - 4/25},
            { s =  path .. "sr2m_flip_01.ogg", t = 0.3 - 4/25 },
            { s =  path .. "kedr_magrelease_button.wav", t = 0.32  - 4/25},
            { s =  path .. "sr2m_mag_out.ogg", t = 0.36  - 4/25},
            { s =  path .. "sr2m_flip_02.ogg", t = 0.67  - 4/25},
            { s = pouchout, t = 0.64  - 4/25},
            { s = randspin, t = 1.12  - 4/25},
            { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.34-0.1 - 4/25 },
            { s =  path .. "sr2m_mag_in.ogg", t = 1.62-0.15 - 4/25 },
            { s =  path .. "sr2m_flip_01.ogg", t = 2.22 - 4/25 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.74- 4/25},
            {hide = 0, t = 0.93- 4/25}
        },
        IKTimeLine = rik_def
    },
    ["reload_tactical1"] = {
        Source = "reload1t",
        MinProgress = 0.92,
        FireASAP = true,
        DropMagAt = 0.74- 4/25,
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.06  - 4/25},
            { s =  path .. "sr2m_flip_02.ogg", t = 0.07  - 4/25},
            { s =  path .. "sr2m_flip_01.ogg", t = 0.3  - 4/25},
            { s =  path .. "kedr_magrelease_button.wav", t = 0.32 - 4/25 },
            { s =  path .. "sr2m_mag_out.ogg", t = 0.36 - 4/25 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.67  - 4/25},
            { s = pouchout, t = 0.64 - 4/25 },
            { s = randspin, t = 1.12+0.04  - 4/25},
            { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.34+0.04-0.1 - 4/25 },
            { s =  path .. "sr2m_mag_in.ogg", t = 1.72+0.04-0.15 - 4/25 },
            { s =  path .. "sr2m_flip_01.ogg", t = 2.22+0.04 - 4/25 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.74- 4/25},
            {hide = 0, t = 0.9- 4/25}
        },
        IKTimeLine = rik_def
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1"}, 
        MinProgress = 0.92,
        FireASAP = true,
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.06 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.07 },
            { s =  path .. "sr2m_flip_01.ogg", t = 0.3 },
            { s =  path .. "kedr_magrelease_button.wav", t = 0.32 },
            { s =  path .. "sr2m_mag_out.ogg", t = 0.36 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.67 },
            { s = pouchout, t = 0.64 },
            { s = randspin, t = 1.12 },
            { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.34-0.1 },
            { s =  path .. "sr2m_mag_in.ogg", t = 1.62-0.15 },
            { s =  path .. "sr2m_flip_01.ogg", t = 2.22 },
            { s = path .. "sr2m_slider_out.ogg", t = 2.56 },
            { s = path .. "sr2m_slider_in.ogg", t = 2.75 },
            { s =  path .. "sr2m_flip_02.ogg", t = 3.11 },
            { s =  path .. "sr2m_hand_02.ogg", t = 3.31 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.74},
            {hide = 0, t = 0.93}
        },
        IKTimeLine = rik_empty
    },
    ["reload_empty1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1"}, 
        MinProgress = 0.92,
        FireASAP = true,
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.06 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.07 },
            { s =  path .. "sr2m_flip_01.ogg", t = 0.3 },
            { s =  path .. "kedr_magrelease_button.wav", t = 0.32 },
            { s =  path .. "sr2m_mag_out.ogg", t = 0.36 },
            { s =  path .. "sr2m_flip_02.ogg", t = 0.67 },
            { s = pouchout, t = 0.64 },
            { s = randspin, t = 1.12+0.04 },
            { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.34+0.04-0.1 },
            { s =  path .. "sr2m_mag_in.ogg", t = 1.72+0.04-0.15 },
            { s =  path .. "sr2m_flip_01.ogg", t = 2.22+0.04 },
            { s = path .. "sr2m_slider_out.ogg", t = 2.56+0.04 },
            { s = path .. "sr2m_slider_in.ogg", t = 2.75+0.04 },
            { s =  path .. "sr2m_flip_02.ogg", t = 3.11+0.04 },
            { s =  path .. "sr2m_hand_02.ogg", t = 3.31+0.04 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.74},
            {hide = 0, t = 0.9}
        },
        IKTimeLine = rik_empty
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
            { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
            { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

            { s = path .. "ak_jam_shell_grab.ogg", t = 1.71 },
            { s = path .. "ak_jam_shell_remove.ogg", t = 1.73 },
            { s = path .. "sr2m_hand_02.ogg", t = 2.16 },
            { s = path .. "sr2m_flip_01.ogg", t = 2.22 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hard",
        EventTable = {
            { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
            { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
            { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.64 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.07 },
            { s = path .. "sr2m_hand_01.ogg", t = 2.28 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.71 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 3.06 },
            { s = path .. "sr2m_flip_01.ogg", t = 3.46 },
            { s = path .. "sr2m_flip_02.ogg", t = 4.04 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 4.42 },
            { s = path .. "sr2m_slider_out.ogg", t = 4.88 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 4.97 },
            { s = path .. "sr2m_slider_in.ogg", t = 5.09 },
            { s = path .. "sr2m_hand_02.ogg", t = 5.42 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 1 },
            { t = 0.3, lhik = 0 },
            { t = 0.88, lhik = 0 },
            { t = 0.96, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 4.97
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
            { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
            { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

            { s = path .. "sr2_bolt_check_out.ogg", t = 1.66 },
            { s = randspin, t = 2.03 },
            { s = path .. "sr2m_flip_01.ogg", t = 2.25 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.88 },
            { s = path .. "sr2m_flip_02.ogg", t = 3.25 },
            { s = path .. "sr2m_slider_in.ogg", t = 3.5 },
            { s = path .. "sr2m_hand_02.ogg", t = 3.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.23, lhik = 1 },
            { t = 0.35, lhik = 0 },
            { t = 0.87, lhik = 0 },
            { t = 0.98, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_soft",
        EventTable = {
            { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
            { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
            { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.8 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.14 },
            { s = path .. "sr2m_hand_01.ogg", t = 2.37 },
            { s = path .. "sr2m_slider_out.ogg", t = 2.67 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.77 },
            { s = path .. "sr2m_slider_in.ogg", t = 2.86 },
            { s = path .. "sr2m_hand_02.ogg", t = 3.17 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.27, lhik = 1 },
            { t = 0.38, lhik = 0 },
            { t = 0.84, lhik = 0 },
            { t = 0.97, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.77
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "inspect0",
        EventTable = {
            { s = path .. "sr2m_hand_out.ogg", t = 0.13 },
            { s = path .. "sr2m_flip_01.ogg", t = 0.24 },
            { s = path .. "sr2m_flip_02.ogg", t = 1.6 },
            { s = path .. "sr2m_hand_01.ogg", t = 1.83 },
            { s = randspin, t = 2.98 },
            { s = path .. "sr2m_hand_02.ogg", t = 3.19 },
        },
        IKTimeLine = rik_look
    },


    ["inspect_mag_0"] = {
        Source = "inspect1_0",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_1"] = {
        Source = "inspect1_1",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },

    ["inspect0"] = {
        Source = "inspect2",
        EventTable = {
            { s = path .. "sr2m_hand_out.ogg", t = 0.05 },
            { s = path .. "sr2m_flip_02.ogg", t = 0.11 },
            { s = path .. "sr2_bolt_check_out.ogg", t = 0.6 },
            { s = path .. "sr2_bolt_check_in.ogg", t = 1.26 },
            { s = path .. "sr2m_flip_01.ogg", t = 1.67 },
            { s = path .. "sr2m_hand_02.ogg", t = 1.91 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.17, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.95, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["firemode_1"] = {
        Source = "firemode0",
        EventTable = { { s = path .. "sr2m_fireselector_down.ogg", t = 0.22 } }
    },
    ["firemode_2"] = {
        Source = "firemode1",
        EventTable = { { s = path .. "sr2m_fireselector_up.ogg", t = 0.02 } }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasHG", "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_sr2m_hg_std"] = { Bodygroups = { {2, 1} } },
    ["eft_sr2m_hg_blk"] = { Bodygroups = { {2, 2} } },

    ["eft_sr2m_pg_std"] = { Bodygroups = { {3, 1} } },
    ["eft_sr2m_pg_blk"] = { Bodygroups = { {3, 2} } },

    ["eft_sr2m_rec_std"] = { Bodygroups = { {4, 1} } },

    ["eft_sr2m_handstop"] = { Bodygroups = { {5, 1} } },
    ["eft_sr2m_silencer"] = { Bodygroups = { {5, 2} } },

    -- ["eft_sr2m_stock_std"] = { Bodygroups = { {6, 1} } },
    ["eft_sr2m_stock_std_unfolded"] = { Bodygroups = { {6, 1} } },
    ["eft_sr2m_stock_std_folded"] = { Bodygroups = { {6, 2} } },
    -- ["eft_sr2m_stock_mp"] = { Bodygroups = { {6, 3} } },
    ["eft_sr2m_stock_mp_unfolded"] = { Bodygroups = { {6, 3} } },
    ["eft_sr2m_stock_mp_folded"] = { Bodygroups = { {6, 4} } },

    ["eft_sr2m_b17"] = { Bodygroups = { {7, 1} } },

    ["eft_ammo_9x21_bt"] = { Skin = 3 },
    ["eft_ammo_9x21_ps"] = { Skin = 0 },
    ["eft_ammo_9x21_p"] = { Skin = 1 },
    ["eft_ammo_9x21_pe"] = { Skin = 2 },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_sr2m_muzzle",
        Bone = "mod_muzzle",
        Installed = "eft_sr2m_handstop",
        Pos = Vector(0, 0.1, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_sr2m_hg",
        Installed = "eft_sr2m_hg_std",
        Bone = "mod_reciever",
        Pos = Vector(0, 5, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1.5, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Category = "eft_sr2m_pg",
        Installed = "eft_sr2m_pg_std",
        Bone = "mod_reciever",
        Pos = Vector(0, -1, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Category = "eft_sr2m_rec",
        Installed = "eft_sr2m_rec_std",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_9x21",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x21_p",
        Pos = Vector(0, -0, -4),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_mag_sr2m",
        Bone = "mod_magazine",
        Installed = "eft_sr2m_mag_20",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_sr2m_stock",
        Bone = "mod_reciever",
        Installed = "eft_sr2m_stock_std",
        Pos = Vector(0, -7, -1.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_sr2m"},
        Bone = "mod_reciever",
        Pos = Vector(0, -5, -4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}