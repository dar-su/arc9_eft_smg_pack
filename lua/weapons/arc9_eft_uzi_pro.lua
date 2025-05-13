AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_uzipro")
SWEP.Description = "eft_weapon_uzipro_desc"

SWEP.Class = "eft_class_weapon_smg"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_iwi",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x19",
    ["eft_trivia_act3"] = "eft_trivia_act_blow",
    ["eft_trivia_country4"] = "eft_trivia_country_israel",
    ["eft_trivia_year5"] = "2010"
}

SWEP.StandardPresets = {
    "[Barter]XQAAAQCEAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD+xFxj3ln4SfzhaVaTbmCaVkQaHweXHR+T64BPbFAsbGOjmE5ilH+LJDO/BEUT74hmE8ptvYABSWiG90+9LpJvqU3Nzb0aItbP0BSMC000gFxv2LaLBKkv4i+b2GcWgRj882QM5s+JYHBSpGx8k6/KmldgqxDGg3wPQ0KFUA7SbqNd86iIGfMOqzQoWM8g14eLmqv0YSkysyYyyjnE7QIknNkOAA==",
    "[SMG]XQAAAQBaAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD+xFxj3ln4SfzhaVaTbmBYX3jb/FFWn7s/ThYlp9MUQw6euttwmtCXV+TTlrclS71K2OLPFlpM1Dj1LM2x4cCorQ0ifZezeS5zb2/QBA9Ag7TOXzyTZthbejwDDZmHKRY/J97fe5mNUzOtAh1bUf42LIa2XYo7+w45I3tejcl/XjEFS5tBHei4DTVw/w=="    
}

SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_uzi_pro.mdl"
SWEP.DefaultBodygroups = "0000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -4.8),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.29, -7, 1.42),
    Ang = Angle(0, 0.0, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.5, 0)
SWEP.CustomizePos = Vector(16.5, 22, 5)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(16.5, -4.29, -5.23)

-- this thing can one hand sprint
local handupang, handuppos, handupholdtype = Angle(-2, 40, -7), Vector(0, -4, -10), "normal"
SWEP.OneHandedSprint = true
SWEP.OneHandedSprintHook = function(self, old) if self:GetValue("HasStock") then return false end end
SWEP.SprintAngHook = function(self, old) if !self:GetValue("HasStock") then return handupang end end
SWEP.SprintPosHook = function(self, old) if !self:GetValue("HasStock") then return handuppos end end
SWEP.HoldTypeSprintHook = function(self, old) if !self:GetValue("HasStock") then return handupholdtype end end

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 6.26 * ARC9.MOAToAcc
SWEP.RPM = 1075
SWEP.EFTErgo = 73
SWEP.BarrelLength = 20
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, RPM = 450, PoseParam = 1 }
}

SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)

SWEP.SuppressEmptySuffixHook = function(swep, empty) -- guh same mag on open bolt and chamber gun
    if swep:GetValue("HasMag") then return false end
end

SWEP.ChamberSizeHook = function(swep, empty) -- guh same mag on open bolt and chamber gun
    if swep:GetValue("HasMag") then return 1 end
end

SWEP.Slot = 2

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.2   -- up recoil
SWEP.RecoilSide = 1.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 0.9   -- random left/right

SWEP.RecoilAutoControl = 3.1 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.3 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.05   --   when fullautoing
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
SWEP.SubtleVisualRecoil = 0.5
SWEP.SubtleVisualRecoilDirection = 2
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
SWEP.MalfunctionMeanShotsToFail = 444
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.HeatCapacity = 160
SWEP.HeatDissipation = 2.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.6
SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

SWEP.CustomPoseParamsHandler = function(swep, ent, iswm)
    if swep:HasElement("eft_uzipro_smg") then
        ent:SetPoseParameter("smg", 1) -- different animations for smg variant
        -- they could've just do a lhik but they made full seperate anim set bruh
    end
end

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_uzipro_smg"] then return ARC9:GetPhrase("eft_weapon_uziprosmg") end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_uzipro_smg"] then return "eft_weapon_uziprosmg_desc" end
end

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/uzi/"
local pathpro = "weapons/darsu_eft/uzipro/"

SWEP.ShootSound = { pathpro .. "fire_new/uzip_outdoor_close_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_close_loop2.ogg", pathpro .. "fire_new/uzip_outdoor_close_loop3.ogg", pathpro .. "fire_new/uzip_outdoor_close_loop4.ogg" }
SWEP.LayerSound = pathpro .. "fire_new/uzip_outdoor_close_tail.ogg"

SWEP.ShootSoundSilenced = { pathpro .. "fire_new/uzip_outdoor_silenced_close_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_close_loop2.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_close_loop3.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = pathpro .. "fire_new/uzip_outdoor_silenced_close_tail.ogg"

SWEP.ShootSoundIndoor = { pathpro .. "fire_new/uzip_indoor_close_loop1.ogg", pathpro .. "fire_new/uzip_indoor_close_loop2.ogg", pathpro .. "fire_new/uzip_indoor_close_loop3.ogg", pathpro .. "fire_new/uzip_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = pathpro .. "fire_new/uzip_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { pathpro .. "fire_new/uzip_indoor_silenced_close_loop1.ogg", pathpro .. "fire_new/uzip_indoor_silenced_close_loop2.ogg", pathpro .. "fire_new/uzip_indoor_silenced_close_loop3.ogg", pathpro .. "fire_new/uzip_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = pathpro .. "fire_new/uzip_indoor_silenced_close_tail.ogg"

SWEP.DistantShootSound = { pathpro .. "fire_new/uzip_outdoor_distant_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { pathpro .. "fire_new/uzip_outdoor_silenced_distant_loop1.ogg", pathpro .. "fire_new/uzip_outdoor_silenced_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { pathpro .. "fire_new/uzip_indoor_distant_loop1.ogg", pathpro .. "fire_new/uzip_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { pathpro .. "fire_new/uzip_indoor_silenced_distant_loop1.ogg", pathpro .. "fire_new/uzip_indoor_silenced_distant_loop2.ogg" }

SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false -- !!
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.53
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180, 0)
SWEP.DropMagazineVelocity = Vector(0, -22, 0)

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",
    [5] = "patron_in_mag4",
}

SWEP.SuppressEmptySuffix = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_uzi_mag_20"] or elements["eft_uzi_mag_20pro"] then ending = 0
    elseif elements["eft_uzi_mag_25"] or elements["eft_uzi_mag_25pro"] then ending = 1
    elseif elements["eft_uzi_mag_32"] or elements["eft_uzi_mag_32pro"]  then ending = 2
    elseif elements["eft_uzi_mag_40"] or elements["eft_uzi_mag_50"]  then ending = 2
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
        if ending == 2 then ending = 1 end -- meow
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
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        -- "patron_in_mag5"
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "uzip_bolt_out_slow.ogg", t = 0.43 },
    { s = randspin, t = 0.97 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.2 },
    { s =  path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 1.95 },
    { s =  path .. "sr2m_hand_02.ogg", t = 2.38 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.67 },
    { s = randspin, t = 3.0 },
}

local rst_def = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.025 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.47 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.53 },
    { s = randspin, t = 0.89 },
    { s = randspin, t = 1.59 },
    { s = pouchin, t = 1.05 },
    { s = pouchout, t = 1.2 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.95 - 0.1 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.04 - 0.1 },
    { s =  path .. "sr2m_hand_02.ogg", t = 2.41 },
}


local rst_empty01 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.02 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.33 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.42 },
    { s = randspin, t = 1.14 },
    { s = pouchout, t = 1.1 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.47 - 0.1 },
    { s =  path .. "uzip_mag_in.ogg", t = 1.54 - 0.1 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.0 },
    { s =  path .. "uzip_bolt_out.ogg", t = 2.46 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.7 },
    { s = randspin, t = 2.95 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.11 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.62},
    {hide = 0, t = 1.1}
}

local rst_empty02 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.02 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.33 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.42 },
    { s = randspin, t = 1.14 },
    { s = pouchout, t = 1.1 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.47 - 0.1 },
    { s =  path .. "uzip_mag_in.ogg", t = 1.54 - 0.1 },
    { s =  path .. "sr2m_flip_01.ogg", t = 1.98 },
    { s =  path .. "uzip_bolt_out.ogg", t = 2.3 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.5 },
    { s = randspin, t = 2.75 },
    { s =  path .. "sr2m_hand_02.ogg", t = 2.83 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.62},
    {hide = 0, t = 1.1}
}

local rst_magcheck = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.4 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.62 },
    { s = randspin, t = 0.78 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.52 },
    { s =  path .. "uzip_mag_in.ogg", t = 1.67 - 0.1 },
    { s =  path .. "sr2m_hand_02.ogg", t = 2.17 },
}
local rik_magcheck = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.8, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 0 },
    { t = 0.88, lhik = 0 },
    { t = 0.97, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_single = {
    { t = 0, lhik = 1 },
    { t = 0.09, lhik = 0 },
    { t = 0.81, lhik = 0 },
    { t = 0.89, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_def = {
    { t = 0, lhik = 1 },
    { t = 0.12, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_empty = {
    { t = 0, lhik = 1 },
    { t = 0.08, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 0.95, lhik = 1 },
    { t = 1, lhik = 1 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1000, -- reset when done soundstables!!!!!!!!
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s =  path .. "uzip_bolt_out.ogg", t = 0.7 },
            { s =  path .. "uzip_bolt_in.ogg", t = 0.96 },
            { s =  path .. "sr2m_hand_02.ogg", t = 1.31 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.7, lhik = 0 },
            { t = 0.88, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },


    ["draw"] = {
        Source = "draw",
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

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = path .. "mp7_hammer.ogg", t = 0 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
        EventTable = {
            { s = path .. "mp7_hammer.ogg", t = 0 },
        }
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_single,
        IKTimeLine = rik_single
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_def,
        IKTimeLine = rik_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_def,
        IKTimeLine = rik_def
    },

    ["reload_empty0"] = {
        Source = "reload_empty0_0", 
        MinProgress = 0.9,
        DropMagAt = 0.62,
        FireASAP = true,
        EventTable = rst_empty01,
        IKTimeLine = rik_empty
    },
    ["1_reload_empty0"] = {
        Source = {"reload_empty0_1", "reload_empty0_2"}, 
        MinProgress = 0.9,
        DropMagAt = 0.62,
        FireASAP = true,
        EventTable = rst_empty02,
        IKTimeLine = rik_empty
    },
    ["reload_empty1"] = {
        Source = "reload_empty1_0", 
        MinProgress = 0.9,
        DropMagAt = 0.62,
        FireASAP = true,
        EventTable = rst_empty01,
        IKTimeLine = rik_empty
    },
    ["1_reload_empty1"] = {
        Source = {"reload_empty1_1", "reload_empty1_2"}, 
        MinProgress = 0.9,
        DropMagAt = 0.62,
        FireASAP = true,
        EventTable = rst_empty02,
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
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.94 },
            { s = randspin, t = 1.5 },
            { s =  path .. "ak_jam_stuckbolt_in1.ogg", t = 1.88 },
            { s =  path .. "ak_jam_stuckbolt_in2.ogg", t = 2.33 },
            { s =  path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.75 },
            { s =  path .. "uzip_bolt_in_slow.ogg", t = 2.95 },
            { s = randspin, t = 3.2 },

            { s = ARC9EFT.Shells9mm, t = 3.2 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.12, lhik = 0 },
            { t = 0.26, lhik = 0 },
            { t = 0.35, lhik = 1 },
            { t = 0.44, lhik = 0 },
            { t = 0.88, lhik = 0 },
            { t = 0.96, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.94 },
            { s = randspin, t = 1.5 },

            { s = slidelockgrab, t = 1.68 },
            { s = slidelock, t = 2.09 },
            { s = slidelock, t = 2.6 },
            { s = randspin, t = 3 },
            { s = randspin, t = 3.55 },
            { s = slidelock, t = 4.04 },
            { s =  path .. "uzip_bolt_out.ogg", t = 4.31 },
            { s =  path .. "uzip_bolt_in.ogg", t = 4.62 },
            { s = randspin, t = 4.81 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.1, lhik = 0 },
            { t = 0.15, lhik = 0 },
            { t = 0.24, lhik = 1 },
            { t = 0.3, lhik = 0 },
            { t = 0.9, lhik = 0 },
            { t = 0.95, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 4.32
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.94 },
            { s = randspin, t = 1.5 },

            { s =  path .. "uzip_bolt_out.ogg", t = 1.8 },
            { s =  path .. "longweapon_jam_rattle3.ogg", t = 2.35 },
            { s =  path .. "longweapon_jam_rattle1.ogg", t = 2.87 },
            { s = randspin, t = 3.34 },
            { s =  path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.93 },
            { s =  path .. "uzip_bolt_in.ogg", t = 3.76 },
            { s = randspin, t = 4.08 },
            { s = ARC9EFT.Shells9mm, t = 3.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.1, lhik = 0 },
            { t = 0.19, lhik = 0 },
            { t = 0.28, lhik = 1 },
            { t = 0.38, lhik = 0 },
            { t = 0.91, lhik = 0 },
            { t = 0.98, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.2 },
            { s = randspin, t = 0.94 },
            { s = randspin, t = 1.5 },

            { s = slidelockgrab, t = 1.72 },
            { s =  path .. "ak_jam_stuckbolt_in2.ogg", t = 2 },
            { s =  path .. "uzip_bolt_out.ogg", t = 2.35 },
            { s =  path .. "uzip_bolt_in.ogg", t = 2.59 },
            { s = randspin, t = 2.86 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.13, lhik = 0 },
            { t = 0.24, lhik = 0 },
            { t = 0.37, lhik = 1 },
            { t = 0.5, lhik = 0 },
            { t = 0.84, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.4
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
            { s =  path .. "sr2m_flip_01.ogg", t = 0.36 },
            { s =  path .. "sr2m_flip_02.ogg", t = 1.58 },
            { s = randspin, t = 2.87 },
            { s =  path .. "sr2m_hand_02.ogg", t = 3.12 },
        },
        IKTimeLine = rik_look
    },
    

    ["inspect_mag_0"] = {
        Source = "check_0",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_1"] = {
        Source = "check_1",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_2"] = {
        Source = "check_2",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s =  path .. "sr2m_hand_out.ogg", t = 0.1 },
            { s = randspin, t = 0.32 },
            { s = path .. "uzip_bolt_out_slow.ogg", t = 0.69 },
            { s = path .. "uzip_bolt_in_slow.ogg", t = 1.22 },
            { s = randspin, t = 1.7 },
            { s =  path .. "sr2m_hand_02.ogg", t = 3.12 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.25, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["firemode_1"] = {
        Source = "firemode0",
        EventTable = { { s = path .. "g36_fireselector.ogg", t = 0.27 } }
    },
    ["firemode_2"] = {
        Source = "firemode1",
        EventTable = { { s = path .. "g36_fireselector.ogg", t = 0.27 } }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasGas", "HasBarrel", "HasReciever", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_uzipro_smg"] = { Bodygroups = { {1, 1} } },

    ["eft_uzipro_barrel_114pike"] = { Bodygroups = { {2, 5} } },
    ["eft_uzipro_barrel_114"] = { Bodygroups = { {2, 1} } },
    ["eft_uzipro_barrel_170"] = { Bodygroups = { {2, 2} } },
    ["eft_uzipro_barrel_210"] = { Bodygroups = { {2, 3} } },
    ["eft_uzipro_barrel_240"] = { Bodygroups = { {2, 4} } },

    ["eft_uzipro_muzzle_nut"] = { Bodygroups = { {3, 1} } },
    ["eft_uzipro_muzzle_masada"] = { Bodygroups = { {8, 1} } },

    ["eft_uzipro_stock_csm"] = { Bodygroups = { {6, 2} } },
    ["eft_uzipro_stock_a3"] = { Bodygroups = { {6, 1} } },
    ["eft_uzipro_stock_brace_folded"] = { Bodygroups = { {6, 7} } },
    ["eft_uzipro_stock_brace_unfolded"] = { Bodygroups = { {6, 5} } },
    ["eft_uzipro_stock_sbr_folded"] = { Bodygroups = { {6, 6} } },
    ["eft_uzipro_stock_sbr_unfolded"] = { Bodygroups = { {6, 4} } },
    ["eft_uzipro_stock_backplate"] = { Bodygroups = { {6, 3} } },

    ["eft_uzipro_hg_mlok"] = { Bodygroups = { {4, 1} } },
    ["eft_uzipro_hgrail"] = { Bodygroups = { {4, 2} } },

    ["eft_uzipro_dust"] = { Bodygroups = { {5, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_uzipro_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(2, 0, 0),
        Installed = "eft_uzipro_barrel_114",
        SubAttachments = {
            {
                Installed = "eft_uzipro_muzzle_nut"
            }
        }
    },
    {
        PrintName = "Receiver",
        Category = "eft_uzipro_mount",
        Bone = "mod_reciever",
        Installed = "eft_uzipro_dust",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = "eft_ammo_9x19_pst_gzh",
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = {"eft_uzi_mag_pro"},
        Bone = "mod_magazine",
        Installed = "eft_uzi_mag_20pro",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_uzipro_stock",
        Bone = "mod_stock",
        Installed = "eft_uzipro_stock_backplate",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Foregrip",
        Category = {"eft_foregrip_small", "eft_uzipro_hg"},
        -- Category = {"eft_foregrip_small", "eft_uzipro_hg2"},
        RejectAttachments = {
            ["eft_foregrip_se5"] = true,
            ["eft_foregrip_se5_fde"] = true,
            ["eft_foregrip_td"] = true,
            ["eft_foregrip_cobra"] = true,
            ["eft_foregrip_afg"] = true,
            ["eft_foregrip_afg_fde"] = true,
            ["eft_foregrip_afg_fg"] = true,
            ["eft_foregrip_afg_od"] = true,
        },
        Bone = "weapon",

        Pos = Vector(0, 20, -1.35),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },  
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_uzipro"},
        Bone = "mod_stock",
        Pos = Vector(0, -2, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}