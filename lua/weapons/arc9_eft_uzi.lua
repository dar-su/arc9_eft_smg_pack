AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_uzi")
SWEP.Description = ARC9:GetPhrase("eft_weapon_uzi_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_iwi",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_9x19",
    ["eft_trivia_act3"] = "eft_trivia_act_recoil",
    ["eft_trivia_country4"] = "eft_trivia_country_israel",
    ["eft_trivia_year5"] = "1954"
}

SWEP.StandardPresets = {
    "[Barter]XQAAAQCuAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD+xFxfEJKcH5zuiZyDrrqn/2u/3D7JsUdjzIhczppBOL28pdt7edJX3rov/xlQEjh8HLhz8ZO2+Uo714RZHbsD97DUlJXw+lBkEYUXHHvocO/XCb/om6S0N8RnTxuVl4FPfidPpsGKmJdyxlKoLRuIuVg5NPv4oMWJXqxKxj/7NeZgd1JGDFaifdTu++Y74i+ITV61daxiWMI6yTfvqp8JM50vsvE2v3PHM4QlAA=="
}

SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_uzi.mdl"
SWEP.DefaultBodygroups = "0000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -4.4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.29, -5, 0.95),
    Ang = Angle(0, 0.00, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.5, 0)
-- SWEP.ActivePos = Vector(-0.7, -8.5, -0.1) -- real no stock pose so close
SWEP.CustomizePos = Vector(16, 40, 4.8)
SWEP.CustomizeSnapshotFOV = 50
SWEP.CustomizeRotateAnchor = Vector(16, -4.27, -5.23) 
SWEP.CustomizeSnapshotPos = Vector(0, 15, 0)

-- this thing can one hand sprint
local handupang, handuppos, handupholdtype = Angle(-2, 40, -7), Vector(0, -4, -10), "normal"
SWEP.OneHandedSprint = true
SWEP.OneHandedSprintHook = function(self, old) if self:GetValue("HasStock") then return false end end
SWEP.SprintAngHook = function(self, old) if !self:GetValue("HasStock") then return handupang end end
SWEP.SprintPosHook = function(self, old) if !self:GetValue("HasStock") then return handuppos end end
SWEP.HoldTypeSprintHook = function(self, old) if !self:GetValue("HasStock") then return handupholdtype end end

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 4.4 * ARC9.MOAToAcc
SWEP.RPM = 600
SWEP.EFTErgo = 65
SWEP.BarrelLength = 26
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, RPM = 450, PoseParam = 1 }
}

SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- actual chamber (no mag)

SWEP.Slot = 2

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.75 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.5   -- up recoil
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

SWEP.Malfunction = false  -- womp
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.6
SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

function SWEP:DoHeat()
    self:SetHeatAmount(self:GetHeatAmount() + self:GetProcessedValue("HeatPerShot", true))
    -- removed thing that would "jam" the weapon when overheating
    -- cuz no anims
end

DEFINE_BASECLASS(SWEP.Base)
function SWEP:SetupDataTables(...)
    BaseClass.SetupDataTables(self, ...)
    self:NetworkVar("Bool", "EFTArmedDryfire")
    self:SetEFTArmedDryfire(true)
end

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/uzi/"

SWEP.ShootSound = { path .. "fire_new/uzi_outdoor_close_loop1.ogg", path .. "fire_new/uzi_outdoor_close_loop2.ogg", path .. "fire_new/uzi_outdoor_close_loop3.ogg", path .. "fire_new/uzi_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire_new/uzi_outdoor_close_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/uzi_outdoor_silenced_close_loop1.ogg", path .. "fire_new/uzi_outdoor_silenced_close_loop2.ogg", path .. "fire_new/uzi_outdoor_silenced_close_loop3.ogg", path .. "fire_new/uzi_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/uzi_outdoor_silenced_close_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/uzi_indoor_close_loop1.ogg", path .. "fire_new/uzi_indoor_close_loop2.ogg", path .. "fire_new/uzi_indoor_close_loop3.ogg", path .. "fire_new/uzi_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/uzi_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/uzi_indoor_silenced_close_loop1.ogg", path .. "fire_new/uzi_indoor_silenced_close_loop2.ogg", path .. "fire_new/uzi_indoor_silenced_close_loop3.ogg", path .. "fire_new/uzi_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/uzi_indoor_silenced_close_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/uzi_outdoor_distant_loop1.ogg", path .. "fire_new/uzi_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/uzi_outdoor_silenced_distant_loop1.ogg", path .. "fire_new/uzi_outdoor_silenced_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/uzi_indoor_distant_loop1.ogg", path .. "fire_new/uzi_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/uzi_indoor_silenced_distant_loop1.ogg", path .. "fire_new/uzi_indoor_silenced_distant_loop2.ogg" }

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
SWEP.DropMagazineVelocity = Vector(30, 15, -20)

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    [1] = "patron_in_mag1",
    [2] = "patron_in_mag2",
    [3] = "patron_in_mag3",
    [4] = "patron_in_mag4",
}

SWEP.SuppressEmptySuffix = true

SWEP.EFT_HasTacReloads = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_uzi_mag_20"] or elements["eft_uzi_mag_20pro"] then ending = 0
    elseif elements["eft_uzi_mag_25"] or elements["eft_uzi_mag_25pro"] then ending = 1
    elseif elements["eft_uzi_mag_32"] or elements["eft_uzi_mag_32pro"]  then ending = 2
    elseif elements["eft_uzi_mag_40"] or elements["eft_uzi_mag_50"]  then ending = 3
    elseif elements["eft_uzi_mag_100"] then ending = 5
    else nomag = true end
    
    local empty = swep:Clip1() == 0 and !swep:GetEFTArmedDryfire() or nomag
    -- local empty = swep:Clip1() == 0 and !nomag
    
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
            ending = rand
        end
        
        return anim .. ending .. (empty and "_empty" or "")
        -- return anim .. ending
    elseif anim == "reload" then
        if swep.EFT_StartedTacReload and !empty then
            if SERVER then timer.Simple(0.3, function() if IsValid(swep) then swep:SetClip1(0) end end) end
            return "reload_tactical" .. ending
        end
        
        if swep:GetEFTArmedDryfire() and swep:Clip1() == 0 then return "reload_tactical" .. ending end

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
    
    if anim == "dryfire" then
        if swep:GetEFTArmedDryfire() then
            swep:SetEFTArmedDryfire(false)
            return "dryfire"
        end
    elseif anim == "fire" then
        swep:SetEFTArmedDryfire(true) 
    end

    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
    return anim .. (empty and "_empty" or "")
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


local rst_def0 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.48 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.65 },
    { s = randspin, t = 1 },
    { s = pouchin, t = 1.15 },
    { s = pouchout, t = 1.83 },
    { s =  path .. "uzip_mag_fail.ogg", t = 2.39 - 0.1 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.69 - 0.1 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.02 },
}
local rst_def3 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.48 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.65 },
    { s = randspin, t = 1 },
    { s = pouchin, t = 1.15 },
    { s = pouchout, t = 1.83 + 0.2 },
    { s =  path .. "uzip_mag_fail.ogg", t = 2.39 - 0.1 + 0.2 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.69 - 0.1 + 0.2},
    { s =  path .. "sr2m_hand_02.ogg", t = 3.02 + 0.2 },
}
local rst_def4 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.48 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.65 },
    { s = randspin, t = 1 },
    { s = pouchin, t = 1.15 },
    { s = pouchout, t = 1.83 + 0.24 },
    { s =  path .. "uzip_mag_fail.ogg", t = 2.39 - 0.1 + 0.26 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.69 - 0.1 + 0.26},
    { s =  path .. "sr2m_hand_02.ogg", t = 3.02 + 0.26 },
}
local rst_def5 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.48 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.65 },
    { s = randspin, t = 1 },
    { s = pouchin, t = 1.15 },
    { s = pouchout, t = 1.83 + 0.24+0.1 },
    { s =  path .. "uzip_mag_fail.ogg", t = 2.39 - 0.1 + 0.26+0.15 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.69 - 0.1 + 0.26+0.15},
    { s =  path .. "sr2m_hand_02.ogg", t = 3.02 + 0.26+0.15 },
}

local rst_empty0 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 },
    { s = randspin, t = 1.09 },
    { s = randspin, t = 1.3 },
    { s = pouchout, t = 1.25 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 },
    { s =  path .. "uzip_bolt_out.ogg", t = 2.73 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.92 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.2 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0},
    {hide = 0, t = 1.3}
}
local rst_empty1 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 },
    { s = randspin, t = 1.09 },
    { s = randspin, t = 1.3 },
    { s = pouchout, t = 1.25 + 0.07 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.07 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.07 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.07 },
    { s =  path .. "uzip_bolt_out.ogg", t = 2.73 + 0.07 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.92 + 0.07 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.2 + 0.07 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0},
    {hide = 0, t = 1.32}
}
local rst_empty3 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 },
    { s = randspin, t = 1.09 },
    { s = randspin, t = 1.3 },
    { s = pouchout, t = 1.25 + 0.13 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.15 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.15 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.15 },
    { s =  path .. "uzip_bolt_out.ogg", t = 2.73 + 0.15 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.92 + 0.15 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.2 + 0.15 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0},
    {hide = 0, t = 1.38}
}
local rst_empty4 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 },
    { s = randspin, t = 1.09 },
    { s = randspin, t = 1.3 },
    { s = pouchout, t = 1.25 + 0.16 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.19 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.19 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.19 },
    { s =  path .. "uzip_bolt_out.ogg", t = 2.73 + 0.19 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.92 + 0.19 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.2 + 0.19 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0},
    {hide = 0, t = 1.41}
}
local rst_empty5 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 },
    { s = randspin, t = 1.09 },
    { s = randspin, t = 1.3 },
    { s = pouchout, t = 1.25 + 0.16+0.1 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.19+0.2 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.19+0.2 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.19+0.2 },
    { s =  path .. "uzip_bolt_out.ogg", t = 2.73 + 0.19+0.2 },
    { s =  path .. "uzip_bolt_in.ogg", t = 2.92 + 0.19+0.2 },
    { s =  path .. "sr2m_hand_02.ogg", t = 3.2 + 0.19+0.2 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0},
    {hide = 0, t = 1.41}
}

local rst_tac0 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 - 4/26 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 - 4/26 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 - 4/26 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 - 4/26 },
    { s = randspin, t = 1.09  - 4/26},
    { s = randspin, t = 1.3  - 4/26},
    { s = pouchout, t = 1.25 - 4/26 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1  - 4/26},
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 - 4/26 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 - 4/26 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0- 4/26},
    {hide = 0, t = 1.3- 4/26}
}
local rst_tac1 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 - 4/26 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 - 4/26 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 - 4/26 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 - 4/26 },
    { s = randspin, t = 1.09 - 4/26 },
    { s = randspin, t = 1.3 - 4/26 },
    { s = pouchout, t = 1.25 + 0.07 - 4/26 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.07 - 4/26 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.07 - 4/26 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.07 - 4/26 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0- 4/26},
    {hide = 0, t = 1.32- 4/26}
}
local rst_tac3 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 - 4/26 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45 - 4/26 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.61  - 4/26},
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87  - 4/26},
    { s = randspin, t = 1.09 - 4/26 },
    { s = randspin, t = 1.3 - 4/26 },
    { s = pouchout, t = 1.25 + 0.13 - 4/26 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.15 - 4/26 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.15 - 4/26 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.15 - 4/26 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0- 4/26},
    {hide = 0, t = 1.38- 4/26}
}
local rst_tac4 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 - 4/26 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.45  - 4/26},
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 - 4/26 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 - 4/26 },
    { s = randspin, t = 1.09  - 4/26},
    { s = randspin, t = 1.3  - 4/26},
    { s = pouchout, t = 1.25 + 0.16 - 4/26 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.19  - 4/26},
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.19 - 4/26 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.19 - 4/26 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0- 4/26},
    {hide = 0, t = 1.41- 4/26}
}
local rst_tac5 = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05  - 4/26},
    { s =  path .. "mp7_mag_button.ogg", t = 0.45  - 4/26},
    { s =  path .. "uzip_mag_out.ogg", t = 0.61 - 4/26 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 0.87 - 4/26 },
    { s = randspin, t = 1.09  - 4/26},
    { s = randspin, t = 1.3 - 4/26 },
    { s = pouchout, t = 1.25 + 0.16+0.1 - 4/26 },
    { s =  path .. "uzip_mag_fail.ogg", t = 1.69 - 0.1 + 0.19+0.2 - 4/26 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.0 - 0.1 + 0.19+0.2 - 4/26 },
    { s =  path .. "sr2m_flip_01.ogg", t = 2.25 + 0.19+0.2 - 4/26 },
    {hide = 0, t = 0},
    {hide = 1, t = 1.0- 4/26},
    {hide = 0, t = 1.41- 4/26}
}

local rst_magcheck = {
    { s =  path .. "sr2m_hand_out.ogg", t = 0.05 },
    { s =  path .. "mp7_mag_button.ogg", t = 0.4 },
    { s =  path .. "uzip_mag_out.ogg", t = 0.54 },
    { s = randspin, t = 0.85 },
    { s =  path .. "fiveseven_mag_rattle.ogg", t = 1.55 },
    { s =  path .. "uzip_mag_fail.ogg", t = 2.26 - 0.1 },
    { s =  path .. "sr2m_mag_in_rattle.ogg", t = 2.45 - 0.1 },
    { s =  path .. "uzip_mag_in.ogg", t = 2.66 - 0.1 },
    { s =  path .. "sr2m_hand_02.ogg", t = 2.98 },
}
local rik_magcheck = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 0.94, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 0.03, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.86, lhik = 0 },
    { t = 0.96, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_def = {
    { t = 0, lhik = 1 },
    { t = 0.11, lhik = 0 },
    { t = 0.91, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_empty = {
    { t = 0, lhik = 1 },
    { t = 0.08, lhik = 0 },
    { t = 0.87, lhik = 0 },
    { t = 0.95, lhik = 1 },
    { t = 1, lhik = 1 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },

    ["ready"] = {
        Source = "ready",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s =  path .. "uzip_bolt_out.ogg", t = 0.91 },
            { s =  path .. "uzip_bolt_in.ogg", t = 1.11 },
            { s =  path .. "sr2m_hand_02.ogg", t = 1.45 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.74, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
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
            { s = path .. "mp7_hammer.ogg", t = 0 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
        EventTable = {
            { s = path .. "uzip_dry_fire.ogg", t = 0 },
        }
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
        EventTable = {
            { s = path .. "mp7_hammer.ogg", t = 0 },
        }
    },

    ["reload"] = { -- uhh
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def0,
        IKTimeLine = rik_def
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_def0,
        IKTimeLine = rik_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_def0,
        IKTimeLine = rik_def
    },
    ["reload2"] = {
        Source = "reload2",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_def3,
        IKTimeLine = rik_def
    },
    ["reload3"] = {
        Source = "reload3",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_def3,
        IKTimeLine = rik_def
    },
    ["reload4"] = {
        Source = "reload4",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_def4,
        IKTimeLine = rik_def
    },
    ["reload5"] = {
        Source = "reload5",
        MinProgress = 0.9,
        MagSwapTime = 1.8,
        FireASAP = true,
        EventTable = rst_def5,
        IKTimeLine = rik_def
    },

    ["reload_tactical0"] = {
        Source = "reload0t",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_tac0,
        DropMagAt = 1.0- 4/26,
        IKTimeLine = rik_def
    },
    ["reload_tactical1"] = {
        Source = "reload1t",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_tac0,
        DropMagAt = 1.0- 4/26,
        IKTimeLine = rik_def
    },
    ["reload_tactical2"] = {
        Source = "reload2t",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_tac3,
        DropMagAt = 1.0- 4/26,
        IKTimeLine = rik_def
    },
    ["reload_tactical3"] = {
        Source = "reload3t",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_tac3,
        DropMagAt = 1.0- 4/26,
        IKTimeLine = rik_def
    },
    ["reload_tactical4"] = {
        Source = "reload4t",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_tac4,
        DropMagAt = 1.0- 4/26,
        IKTimeLine = rik_def
    },
    ["reload_tactical5"] = {
        Source = "reload5t",
        MinProgress = 0.9,
        MagSwapTime = 1.8,
        FireASAP = true,
        EventTable = rst_tac5,
        DropMagAt = 1.0- 4/26,
        IKTimeLine = rik_def
    },

    ["reload_empty0"] = {
        Source = "reload_empty0", 
        MinProgress = 0.9,
        DropMagAt = 1.0,
        FireASAP = true,
        EventTable = rst_empty0,
        IKTimeLine = rik_empty
    },
    ["reload_empty1"] = {
        Source = "reload_empty1", 
        MinProgress = 0.9,
        DropMagAt = 1.0,
        FireASAP = true,
        EventTable = rst_empty1,
        IKTimeLine = rik_empty
    },
    ["reload_empty2"] = {
        Source = "reload_empty2", 
        MinProgress = 0.9,
        DropMagAt = 1.0,
        FireASAP = true,
        EventTable = rst_empty1,
        IKTimeLine = rik_empty,
    },
    ["reload_empty3"] = {
        Source = "reload_empty3", 
        MinProgress = 0.9,
        DropMagAt = 1.0,
        FireASAP = true,
        EventTable = rst_empty3,
        IKTimeLine = rik_empty,
    },
    ["reload_empty4"] = {
        Source = "reload_empty4", 
        MinProgress = 0.9,
        DropMagAt = 1.0,
        FireASAP = true,
        EventTable = rst_empty4,
        IKTimeLine = rik_empty,
    },
    ["reload_empty5"] = {
        Source = "reload_empty5", 
        MinProgress = 0.9,
        DropMagAt = 1.0,
        MagSwapTime = 1.8,
        FireASAP = true,
        EventTable = rst_empty5,
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


    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s =  path .. "sr2m_flip_01.ogg", t = 0.08 },
            { s =  path .. "sr2m_flip_02.ogg", t = 1.18 },
            { s =  path .. "longweapon_jam_rattle3.ogg", t = 1.92 },
            { s =  path .. "sr2m_flip_01.ogg", t = 2.95 },
        },
        IKTimeLine = rik_look
    },
    ["inspect1_empty"] = {
        Source = "look_empty",
        EventTable = {
            { s =  path .. "sr2m_flip_01.ogg", t = 0.08 },
            { s =  path .. "sr2m_flip_02.ogg", t = 1.18 },
            { s =  path .. "longweapon_jam_rattle3.ogg", t = 1.92 },
            { s =  path .. "sr2m_flip_01.ogg", t = 2.95 },
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
    ["inspect_mag_5"] = {
        Source = "check_5",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_5"] = {
        Source = "check_5_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s = path .. "sr2m_flip_02.ogg", t = 0.08 },
            { s = path .. "sr2m_flip_01.ogg", t = 0.72 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["inspect_empty0"] = {
        Source = "check_chamber_empty",
        EventTable = {
            { s = path .. "sr2m_flip_02.ogg", t = 0.08 },
            { s = path .. "sr2m_flip_01.ogg", t = 0.72 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
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
    ["firemode_1_empty"] = {
        Source = "firemode0_empty",
        EventTable = { { s = path .. "g36_fireselector.ogg", t = 0.27 } }
    },
    ["firemode_2_empty"] = {
        Source = "firemode1_empty",
        EventTable = { { s = path .. "g36_fireselector.ogg", t = 0.27 } }
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasGas", "HasBarrel", "HasHG", "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_uzi_barrel_238"] = { Bodygroups = { {1, 1} } },
    ["eft_uzi_barrel_259"] = { Bodygroups = { {1, 2} } },
    ["eft_uzi_barrel_409"] = { Bodygroups = { {1, 3} } },

    ["eft_uzi_muzzle_3thr"] = { Bodygroups = { {3, 1} } },
    ["eft_uzi_muzzle_shroud"] = { Bodygroups = { {2, 3} } },
    ["eft_uzi_muzzle_3nut"] = { Bodygroups = { {2, 1} } },
    ["eft_uzi_muzzle_nut"] = { Bodygroups = { {2, 2} } },
    ["eft_uzi_muzzle_sup"] = { Bodygroups = { {2, 4} } },

    ["eft_uzi_stock_t3"] = { Bodygroups = { {8, 1} } },
    ["eft_uzi_stock_t5_unfolded"] = { Bodygroups = { {8, 2} } },
    ["eft_uzi_stock_t5_folded"] = { Bodygroups = { {8, 6} } },
    ["eft_uzi_stock_t6_unfolded"] = { Bodygroups = { {8, 3} } },
    ["eft_uzi_stock_t6_folded"] = { Bodygroups = { {8, 7} } },
    ["eft_uzi_stock_t7"] = { Bodygroups = { {8, 4} } },
    ["eft_uzi_stock_wekz"] = { Bodygroups = { {8, 5} } },

    ["eft_uzi_hg_std"] = { Bodygroups = { {4, 1} } },
    ["eft_uzi_hg_fg"] = { Bodygroups = { {4, 2} } },
    ["eft_uzi_hg_k"] = { Bodygroups = { {4, 3} } },
    ["eft_uzi_hg2_werkz"] = { Bodygroups = { {5, 1} } },

    ["eft_uzi_rail_optic"] = { Bodygroups = { {7, 1} } },
    ["eft_uzi_grip_std"] = { Bodygroups = { {6, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_uzi_barrel",
        Bone = "mod_barrel",
        Installed = "eft_uzi_barrel_259",
        SubAttachments = {
            {
                Installed = "eft_uzi_muzzle_nut"
            }
        },
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = "eft_uzi_mount",
        Bone = "mod_mount_000",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = "eft_ammo_9x19_pst_gzh",
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = {"eft_uzi_mag", "eft_uzi_mag_pro"},
        Bone = "mod_magazine",
        Installed = "eft_uzi_mag_32",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_uzi_stock",
        Bone = "mod_stock",
        Installed = "eft_uzi_stock_t5",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_uzi_hg",
        Bone = "mod_handguard",
        Installed = "eft_uzi_hg_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },  
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = "eft_uzi_hg2",
        Bone = "mod_mount_001",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },  
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Category = "eft_uzi_grip",
        Bone = "mod_pistol_grip",
        Installed = "eft_uzi_grip_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },   
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_slot_uzi"},
        Bone = "mod_stock",
        Pos = Vector(0, -2, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}