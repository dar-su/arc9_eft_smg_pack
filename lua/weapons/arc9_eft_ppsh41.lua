AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_ppsh41_alt")
SWEP.Description = ARC9:GetPhrase("eft_weapon_ppsh41_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_numerous",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_762x25",
    ["eft_trivia_act3"] = "eft_trivia_act_blow",
    ["eft_trivia_country4"] = "eft_trivia_country_ussr",
    ["eft_trivia_year5"] = "1940"
}

SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_ppsh41.mdl"
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
    Pos = Vector(-4.27, -7, 1.05),
    Ang = Angle(0, 0.4, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.27)
SWEP.CustomizePos = Vector(19, 43, 5)
SWEP.CustomizeSnapshotFOV = 55
SWEP.CustomizeRotateAnchor = Vector(19, -4.27, -5.23) 
SWEP.CustomizeSnapshotPos = Vector(0, 15, 0)

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 3.44 * ARC9.MOAToAcc
SWEP.RPM = 1000
SWEP.EFTErgo = 16
SWEP.BarrelLength = 26
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, RPM = 450, PoseParam = 2 }
}

SWEP.Slot = 2

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.8 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.8   -- up recoil
SWEP.RecoilSide = 2.0 -- sideways recoil
SWEP.RecoilRandomUp   = 1.3 -- random up/down
SWEP.RecoilRandomSide = 0.6   -- random left/right

SWEP.RecoilAutoControl = 2.75 -- autocompenstaion, could be cool if set to high but it also affects main recoil

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

-- pst dmg

SWEP.DamageMax = 50 * 0.5
SWEP.DamageMin = 31.7 * 0.5
SWEP.PhysBulletMuzzleVelocity = 430 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      25 *2.54/100/0.0254
SWEP.PenetrationDelta = 36/100
SWEP.ArmorPiercing =    36/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    50 * 0.5     },

    {   100 /0.0254 * 1, 
    43.67 * 0.5     },

    {   200 /0.0254 * 1, 
    41 * 0.5     },

    {   300 /0.0254 * 1, 
    39 * 0.5     },

    {   400 /0.0254 * 1, 
    37.64 * 0.5     },

    {   500 /0.0254 * 1, 
    36.35 * 0.5     },

    {   600 /0.0254 * 1, 
    35.2 * 0.5     },

    {   700 /0.0254 * 1, 
    34.2 * 0.5     },

    {   800 /0.0254 * 1, 
    33.3 * 0.5     },

    {   900 /0.0254 * 1, 
    32.5 * 0.5     },

    {   1000 /0.0254 * 1, 
    31.7 * 0.5     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.Malfunction = false
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.8
SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x25tt.mdl"
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

local path = "weapons/darsu_eft/ppsh41/"

SWEP.ShootSound = { path .. "fire/ppsh_outdoor_close_loop1.ogg", path .. "fire/ppsh_outdoor_close_loop2.ogg", path .. "fire/ppsh_outdoor_close_loop3.ogg", path .. "fire/ppsh_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire/ppsh_outdoor_close_loopt.ogg"

SWEP.ShootSoundIndoor = { path .. "fire/ppsh_indoor_close_loop1.ogg", path .. "fire/ppsh_indoor_close_loop2.ogg", path .. "fire/ppsh_indoor_close_loop3.ogg", path .. "fire/ppsh_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire/ppsh_indoor_close_loopt.ogg"

SWEP.DistantShootSound = { path .. "fire/ppsh_outdoor_distant_loop1.ogg", path .. "fire/ppsh_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire/ppsh_indoor_distant_loop1.ogg", path .. "fire/ppsh_indoor_distant_loop2.ogg" }

SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false -- !!
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.74
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180, 0)
SWEP.DropMagazineVelocity = Vector(20, 0, 10)

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
}

SWEP.SuppressEmptySuffix = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_ppsh41_mag_71"] then ending = 0
    elseif elements["eft_ppsh41_mag_35"] then ending = 1
    else nomag = true end

    -- local empty = swep:Clip1() == 0 and !nomag
    local empty = swep:Clip1() == 0 and !swep:GetEFTArmedDryfire() or nomag
    
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
        
        return anim .. ending .. (empty and "_empty" or "")
    elseif anim == "reload" then
        return anim .. (empty and "_empty" or "") .. ending
    end

    -- if anim == "fix" then
    --     local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        
    --     -- swep.EFTInspectnum = swep.EFTInspectnum or 0
    --     -- if IsFirstTimePredicted() then
    --     --     swep.EFTInspectnum = swep.EFTInspectnum + 1
    --     -- end
    --     -- local rand = swep.EFTInspectnum
    --     -- if rand == 5 then swep.EFTInspectnum = 1 rand = 1 end

    --     if SERVER and ARC9EFTBASE then
    --         net.Start("arc9eftjam")
    --         net.WriteUInt(rand, 3)
    --         net.Send(swep:GetOwner())
    --     end

    --     return "jam" .. rand
    -- end
    
    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
    -- print(anim)

    if anim == "dryfire" then
        if swep:GetEFTArmedDryfire() then
            swep:SetEFTArmedDryfire(false)
            return "dryfire"
        end
    elseif anim == "fire" then
        swep:SetEFTArmedDryfire(true) 
    end

    return anim .. (empty and "_empty" or "")
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
    { s = randspin, t = 0.05 },
    { s =  path .. "ppsh_magrelease_button.ogg", t = 0.52 },
    { s =  path .. "ppsh_mag_out.ogg", t = 0.86 },
    { s = randspin, t = 0.92 },
    { s =  path .. "ppsh_mag_pullout3.ogg", t = 0.99 },
    { s =  path .. "ppsh_mag_pullout1.ogg", t = 2.22 },
    { s =  path .. "ppsh_mag_pullout2.ogg", t = 2.41 },
    { s =  path .. "ppsh_mag_in.ogg", t = 2.89 },
    { s = randspin, t = 3.54 },
}
local rst_magcheck1 = {
    { s = randspin, t = 0.05 },
    { s =  path .. "ppsh_magrelease_button.ogg", t = 0.5 },
    { s =  path .. "ppsh_mag_box_out.ogg", t = 0.91 },
    { s = randspin, t = 0.93 },
    { s =  path .. "ppsh_mag_pullout1.ogg", t = 1.04 },
    { s =  path .. "ppsh_mag_pullout3.ogg", t = 2.37 },
    { s =  path .. "ppsh_mag_box_in.ogg", t = 2.9 },
    { s = randspin, t = 3.58 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        -- Time = 1000, -- reset when done soundstables!!!!!!!!
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "ppsh_slider_in.ogg", t = 0.83 },
            { s = path .. "ppsh_slider_out.ogg", t = 1.14, v = 0.25 },
            { s = randspin, t = 1.37 },
        },
    },


    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
        }
    },

    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/weap_out.ogg", t = 0.61 },
        }
    },

    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/weap_out.ogg", t = 0.61 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = { { s = path .. "ak74_trigger_empty.wav", t = 0 } }
    },
    -- ["fire_empty"] = {
    --     Source = "fire_last",
    --     EventTable = { { s = path .. "kedr_trigger_hammer.wav", t = 0 } }
    -- },

    ["dryfire"] = {
        Source = "fire_dry",
        EventTable = {
            { s = path .. "ak74_trigger_empty.wav", t = 0 },
            { s = path .. "ppsh_slider_out.ogg", t = 0.01 },
        },
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
        EventTable = { { s = path .. "ak74_trigger_empty.wav", t = 0 } }
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.92,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.04 },
            { s =  path .. "ppsh_magrelease_button.ogg", t = 0.55 },
            { s = randspin, t = 0.68 },
            { s =  path .. "ppsh_mag_out.ogg", t = 0.87 },
            { s =  path .. "ppsh_mag_pullout3.ogg", t = 1.15 },
            { s = pouchin, t = 1.34 },
            { s = pouchout, t = 1.57 },
            { s =  path .. "ppsh_mag_in.ogg", t = 2.07 },
            { s = randspin, t = 2.4 },
            { s = randspin, t = 2.69 },
        },
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.92,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.04 },
            { s =  path .. "ppsh_magrelease_button.ogg", t = 0.47 },
            { s = randspin, t = 0.61 },
            { s =  path .. "ppsh_mag_box_out.ogg", t = 0.86 },
            { s =  path .. "ppsh_mag_pullout3.ogg", t = 1.15 },
            { s = pouchin, t = 1.26 },
            { s = pouchout, t = 1.5 },
            { s =  path .. "ppsh_mag_box_in.ogg", t = 1.86 },
            { s = randspin, t = 2.15 },
            { s = randspin, t = 2.45 },
        },
    },

    ["reload_empty0"] = {
        Source = "reload_empty0", 
        MinProgress = 0.92,
        DropMagAt = 1.15,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.04 },
            { s =  path .. "ppsh_magrelease_button.ogg", t = 0.5 },
            { s = randspin, t = 0.57 },
            { s =  path .. "ppsh_mag_out.ogg", t = 0.78 },
            { s =  path .. "ppsh_mag_pullout1.ogg", t = 0.97 },
            { s = randspin, t = 1.09 },
            { s = pouchout, t = 1.34 },
            { s =  path .. "ppsh_mag_in.ogg", t = 1.92 },
            { s = randspin, t = 2.22 },
            { s = randspin, t = 3.02 },
            { s = path .. "ppsh_slider_in.ogg", t = 3.59 },
            { s = path .. "ppsh_slider_out.ogg", t = 3.85, v = 0.25 },
            { s = randspin, t = 4.1 },

            {hide = 0, t = 0},
            {hide = 1, t = 1.15},
            {hide = 0, t = 1.5}
        },
    },
    ["reload_empty1"] = {
        Source = "reload_empty1", 
        MinProgress = 0.92,
        DropMagAt = 1.1,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.04 },
            { s =  path .. "ppsh_magrelease_button.ogg", t = 0.5 },
            { s = randspin, t = 0.57 },
            { s =  path .. "ppsh_mag_box_out.ogg", t = 0.78 },
            { s =  path .. "ppsh_mag_pullout3.ogg", t = 0.97 },
            { s = randspin, t = 1.09 },
            { s = pouchout, t = 1.34 },
            { s =  path .. "ppsh_mag_box_in.ogg", t = 1.73 },
            { s = randspin, t = 2.0 },
            { s = randspin, t = 2.67 },
            { s = path .. "ppsh_slider_in.ogg", t = 3.3 },
            { s = path .. "ppsh_slider_out.ogg", t = 3.58, v = 0.25 },
            { s = randspin, t = 3.84 },

            {hide = 0, t = 0},
            {hide = 1, t = 1.1},
            {hide = 0, t = 1.5}
        },
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
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 0.22 },
            { s = randspin, t = 1.21 },
            { s = randspin, t = 2.45 },
        },
    },
    ["inspect1_empty"] = {
        Source = "look_empty",
        EventTable = {
            { s = randspin, t = 0.22 },
            { s = randspin, t = 1.21 },
            { s = randspin, t = 2.45 },
        },
    },


    ["inspect_mag_0"] = {
        Source = "check_0",
        EventTable = rst_magcheck,
    },
    ["inspect_mag_1"] = {
        Source = "check_1",
        EventTable = rst_magcheck1,
    },
    ["inspect_mag_0_empty"] = {
        Source = "check_0_empty",
        EventTable = rst_magcheck,
    },
    ["inspect_mag_1_empty"] = {
        Source = "check_1_empty",
        EventTable = rst_magcheck1,
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s = randspin, t = 0.19 },
            { s = randspin, t = 1.1 },
        },
    },

    ["inspect0_empty"] = {
        Source = "check_chamber_empty",
        EventTable = {
            { s = randspin, t = 0.19 },
            { s = randspin, t = 1.1 },
        },
    },

    ["firemode_1"] = {
        Source = "firemode0",
        EventTable = {
            { s = path .. "ak74_fireselector_down.ogg", t = 0.42 },
            { s = randspin, t = 0.43 },
        },
    },
    ["firemode_2"] = {
        Source = "firemode1",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = path .. "ak74_fireselector_up.ogg", t = 0.32 },
        },
    },

    ["firemode_1_empty"] = {
        Source = "firemode0",
        EventTable = {
            { s = path .. "ak74_fireselector_down.ogg", t = 0.42 },
            { s = randspin, t = 0.43 },
        },
    },
    ["firemode_2_empty"] = {
        Source = "firemode1",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = path .. "ak74_fireselector_up.ogg", t = 0.32 },
        },
    },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasReciever", "HasBarrel", "HasGrip", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_ppsh41_barrel_269"] = { Bodygroups = { {1, 1} } },
    ["eft_ppsh41_dust"] = { Bodygroups = { {2, 1} } },
    ["eft_ppsh41_stock"] = { Bodygroups = { {3, 1} } },
    ["eft_ppsh41_mag_35"] = { Bodygroups = { {4, 1} } },
    ["eft_ppsh41_mag_71"] = { Bodygroups = { {4, 2} } },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_ppsh41_barrel",
        Installed = "eft_ppsh41_barrel_269",
        Bone = "mod_stock",
        Pos = Vector(0, 12, 1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_stock_ppsh41",
        Installed = "eft_ppsh41_stock",
        Bone = "mod_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_receiver"),
        Category = "eft_ppsh41_dc",
        Installed = "eft_ppsh41_dust",
        Bone = "mod_stock",
        Pos = Vector(0, 9, 1.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = "eft_ammo_762x25tt",
        Bone = "mod_magazine",
        Integral = "eft_ammo_762x25tt_pst",
        Installed = "eft_ammo_762x25tt_pst",
        Pos = Vector(0, -0, -4),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_ppsh41_mag",
        Bone = "mod_magazine",
        Installed = "eft_ppsh41_mag_35",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_ppsh41"},
        Bone = "mod_stock",
        Pos = Vector(0, 0, -3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}