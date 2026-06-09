local ATT = {}


///////////////////////////////////////      eft_mp7_fh


ATT = {}

ATT.PrintName = "HK MP7A1 4.6x30 flash hider"
ATT.CompactName = "MP7A1"
ATT.Icon = Material("entities/eft_mp7_attachments/mz.png", "mips smooth")
ATT.Description = [[A flash hider designed for installation on the MP7 SMGs chambered in 4.6x30mm, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp7_muzzle"}

--ATT.PhysBulletMuzzleVelocityMult = 1.005
-- ATT.HeatCapacityMult = 0.989

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_silencer"),
        Category = "eft_mp7_silen",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.5,
    recoilModifier = -6,
    accuracyModifier = 3,
    weight = 0.08,
}))


-- EFT ID: 5ba26acdd4351e003562908e
ARC9.LoadAttachment(ATT, "eft_mp7_fh")


///////////////////////////////////////      eft_mp7_muzzle_sf556


ATT = {}

ATT.PrintName = "HK MP7 SureFire SF3P 4.6x30 flash hider"
ATT.CompactName = "SF3P"
ATT.Icon = Material("entities/eft_mp7_attachments/mzsfp.png", "mips smooth")
ATT.Description = [[A variant of the SureFire SF3P-556 three-prong flash hider designed specifically for HK MP7 series submachine guns. Allows installation of the compatible SureFire sound suppressors.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp7_muzzle"}

--ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.HeatCapacityMult = 1.01

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_silencer"),
        Category = "eft_ar15_surefire_silencer",
        Pos = Vector(-0.6, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    recoilModifier = -6,
    accuracyModifier = 3,
    weight = 0.072,
}))


-- EFT ID: IDFK
ARC9.LoadAttachment(ATT, "eft_mp7_muzzle_sf556")

///////////////////////////////////////      eft_mp7_silencer


ATT = {}

ATT.PrintName = "HK MP7 B&T Rotex 2 4.6x30 sound suppressor"
ATT.CompactName = "Rotex 2"
ATT.Icon = Material("entities/eft_mp7_attachments/sil.png", "mips smooth")
ATT.Description = [[Rotex 2 is a 4.6x30mm sound suppressor manufactured by Brügger & Thomet. Installed on the HK MP7 submachine guns.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_mp7_silen"}
ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -12,
    recoilModifier = -3.5,
    weight = 0.607,
    velocity = 0.8,
}))


-- EFT ID: 5ba26ae8d4351e00367f9bdb
ARC9.LoadAttachment(ATT, "eft_mp7_silencer")

///////////////////////////////////////      eft_mp7_stock_a1


ATT = {}

ATT.PrintName = "HK MP7A1 stock"
ATT.CompactName = "A1"
ATT.Icon = Material("entities/eft_mp7_attachments/sta1.png", "mips smooth")
ATT.Description = [[A standard-issue retractable stock for the MP7A1 submachine gun. Manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBufferTube = true


ATT.Category = {"eft_mp7_stock"}

ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.88,
        VisualRecoilMult = 0.88,
        ActivateElements = {"eft_mp7_stock_a1unfolded"},
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        CustomizePos = Vector(18, 40, 6),
        CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_mp7_stock_a1folded"}
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.2,
}))


-- EFT ID: 5bcf0213d4351e0085327c17
ARC9.LoadAttachment(ATT, "eft_mp7_stock_a1")


///////////////////////////////////////      eft_mp7_stock_a2


ATT = {}

ATT.PrintName = "HK MP7A2 stock"
ATT.CompactName = "A2"
ATT.Icon = Material("entities/eft_mp7_attachments/sta2.png", "mips smooth")
ATT.Description = [[A standard-issue retractable stock for the MP7A2 submachine gun. Manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBufferTube = true
ATT.Category = {"eft_mp7_stock"}


ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.88,
        VisualRecoilMult = 0.88,
        ActivateElements = {"eft_mp7_stock_a2unfolded"},
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        CustomizePos = Vector(18, 40, 6),
        CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_mp7_stock_a2folded"}
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.2,
}))


-- EFT ID: 5bd704e7209c4d00d7167c31
ARC9.LoadAttachment(ATT, "eft_mp7_stock_a2")

///////////////////////////////////////      eft_mp7_stock_fd_ars


ATT = {}

ATT.PrintName = "HK MP7 FAB Defense ARS stock adapter"
ATT.CompactName = "ARS"
ATT.Icon = Material("entities/eft_mp7_attachments/stfbarsadapt.png", "mips smooth")
ATT.Description = [[An adapter for HK MP7 submachine guns designed for installation of ARS type buttstocks. Manufactured by FAB Defense.]]
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBufferTube = true
ATT.Category = {"eft_mp7_stock"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.27,
}))

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_fd_ars_stock",
        Pos = Vector(1.5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

-- EFT ID: IDFK
ARC9.LoadAttachment(ATT, "eft_mp7_stock_fd_ars")

///////////////////////////////////////      eft_mp7_stock_fd_fx_kpos


ATT = {}

ATT.PrintName = "FAB Defense FX-KPOS ARS stock"
ATT.CompactName = "ARS"
ATT.Icon = Material("entities/eft_mp7_attachments/stfbars.png", "mips smooth")
ATT.Description = [[A telescoping buttstock designed for use with gas masks or helmet visors and mandibles. Manufactured by FAB Defense.]]
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasStock = true
ATT.Category = {"eft_fd_ars_stock"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 8,
    recoilModifier = -10,
    accuracyModifier = 3,
    weight = 0.25,
}))


-- EFT ID: IDFK
ARC9.LoadAttachment(ATT, "eft_mp7_stock_fd_fx_kpos")


///////////////////////////////////////      eft_mp7_mag_20


ATT = {}

ATT.PrintName = "HK MP7 4.6x30 20-round magazine"
ATT.CompactName = "MP7 20"
ATT.Icon = Material("entities/eft_mp7_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20


ATT.Category = {"eft_mag_mp7"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.1,
    malfunctionChance = 0.02,
}))


-- EFT ID: 5ba264f6d4351e0034777d52
ARC9.LoadAttachment(ATT, "eft_mp7_mag_20")


///////////////////////////////////////      eft_mp7_mag_30


ATT = {}

ATT.PrintName = "HK MP7 4.6x30 30-round magazine"
ATT.CompactName = "MP7 30"
ATT.Icon = Material("entities/eft_mp7_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30


ATT.Category = {"eft_mag_mp7"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.15,
    malfunctionChance = 0.03,
}))


-- EFT ID: 5ba2657ed4351e0035628ff2
ARC9.LoadAttachment(ATT, "eft_mp7_mag_30")

///////////////////////////////////////      eft_mp7_mag_40


ATT = {}

ATT.PrintName = "HK MP7 4.6x30 40-round magazine"
ATT.CompactName = "MP7 40"
ATT.Icon = Material("entities/eft_mp7_attachments/40.png", "mips smooth")
ATT.Description = [[A standard 30-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_40.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_40.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 40


ATT.Category = {"eft_mag_mp7"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -4,
    weight = 0.2,
    malfunctionChance = 0.05,
}))


-- EFT ID: 5ba26586d4351e44f824b340
ARC9.LoadAttachment(ATT, "eft_mp7_mag_40")


///////////////////////////////////////      eft_mp7a2_blk


ATT = {}

ATT.PrintName = "MP7A2 Full Black"
ATT.CompactName = "Black"
ATT.Icon = Material("entities/eft_mp7_attachments/a2blk.png", "mips smooth")
ATT.Description = [[Black color instead of FDE/green (wtf bsg??) for the MP7A2.

Not presents in EFT, custom att.]]

-- ATT.DropMagazineSkin = 1

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Max = 1

ATT.RequireElements = {"eft_mp7_a2"}
ATT.Category = {"eft_custom_slot_mp7"}
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_slot_mp7"},
    },
}


-- EFT ID: NO
ARC9.LoadAttachment(ATT, "eft_mp7a2_blk")




///////////////////////////////////////      eft_ammo_4630_actionsx


ATT = {}

ATT.PrintName = "4.6x30mm Action SX"
ATT.CompactName = "Action SX"
ATT.Icon = Material("entities/eft_mp7_attachments/ac.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK Action SX cartridge with a 2 gram hollow-point bullet made entirely of brass, in a brass case. This cartridge is designed to effectively incapacitate an aggressor during close-quarters operations thanks to its considerable stopping power effect, in addition to preventing over-piercing, however, due to its design, it has a significant bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_4630_actionsx.printname")

ATT.Category = {"eft_ammo_4630"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.007,
    damage = 65,
    ballisticCoeficient = 0.175,
    initialSpeed = 690,
    penetrationPower = 18,
    armorDamage = 28,
    penetrationChance = 0.2,
    ricochetChance = 0.3,
    heatFactor = 0.99,
    failureToFeedChance = 0.089,
    misfireChance = 0.175,
}, "pistol"))


-- EFT ID: 5ba26812d4351e003201fef1
ARC9.LoadAttachment(ATT, "eft_ammo_4630_actionsx")


///////////////////////////////////////      eft_ammo_4630_subsonicsx

ATT = {}

ATT.PrintName = "4.6x30mm Subsonic SX"
ATT.CompactName = "Subsonic SX"
ATT.Icon = Material("entities/eft_mp7_attachments/subs.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK Subsonic SX cartridge with a 5 gram copper-plated tungsten alloy core subsonic bullet in a brass case with a reduced charge. The powder load in this subsonic cartridge is adjusted to operate with the MP7 family of submachine guns, ensuring the weapon's fire cycling and achieving excellent noise reduction when used in conjunction with a suppressor. Despite its low muzzle velocity, the bullet has ballistic capabilities to pierce basic ballistic body protections and provides excellent results against intermediate protection models, however, due to its design, it has a high bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_4630_subsonicsx.printname")

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 44.09	43.3	42.56	41.88	41.26	40.66	40.11	39.59	39.1	38.64


ATT.Category = {"eft_ammo_4630"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.01,
    damage = 52,
    ballisticCoeficient = 0.437,
    initialSpeed = 290,
    accuracyModifier = 0.1,
    recoilModifier = -0.22,
    penetrationPower = 23,
    armorDamage = 33,
    penetrationChance = 0.3,
    ricochetChance = 0.5,
    heatFactor = 0.88,
    failureToFeedChance = 0.01,
    misfireChance = 0.14,
}, "pistol"))


-- EFT ID: 5ba26844d4351e00334c9475
ARC9.LoadAttachment(ATT, "eft_ammo_4630_subsonicsx")

///////////////////////////////////////      eft_ammo_4630_jsp

ATT = {}

ATT.PrintName = "4.6x30mm JSP SX"
ATT.CompactName = "JSP SX"
ATT.Icon = Material("entities/eft_mp7_attachments/subs.png", "mips smooth")
ATT.Description = [[Fibonacci 40gr. Jacketed Soft Point Ammo for the 4.6x30 HK caliber. This round is designed along the same lines as the 5.7x28 round. The jacketed soft point makes this a viable varmint and small game round. Usable in the H&K MP7. This ammo is brass cased, boxer primed, and non-corrosive.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_4630_jsp.printname")

ATT.Category = {"eft_ammo_4630"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.007,
    damage = 46,
    ballisticCoeficient = 0.175,
    initialSpeed = 579,
    penetrationPower = 32,
    armorDamage = 37,
    penetrationChance = 0.2,
    ricochetChance = 0.35,
    heatFactor = 0.99,
    failureToFeedChance = 0.089,
    misfireChance = 0.175,
}, "pistol"))
-- EFT ID: 64b6979341772715af0f9c39
ARC9.LoadAttachment(ATT, "eft_ammo_4630_jsp")

///////////////////////////////////////      eft_ammo_4630_fmjsx

ATT = {}

ATT.PrintName = "4.6x30mm FMJ SX"
ATT.CompactName = "FMJ SX"
ATT.Icon = Material("entities/eft_mp7_attachments/fmj.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK FMJ SX cartridge with a 2.6 gram lead-antimony alloy core bullet with a brass full metal jacket (FMJ) in a brass case. This cartridge was developed for general military use, but the ballistic capabilities of its bullet allow it to pierce basic and intermediate ballistic body protections, however, due to its design, it has a high bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_4630_fmjsx.printname")


ATT.Category = {"eft_ammo_4630"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.007,
    damage = 43,
    ballisticCoeficient = 0.228,
    initialSpeed = 620,
    penetrationPower = 40,
    armorDamage = 41,
    penetrationChance = 0.4,
    ricochetChance = 0.4,
    heatFactor = 1,
    failureToFeedChance = 0.02,
    misfireChance = 0.175,
}, "pistol"))


-- EFT ID: 5ba2678ad4351e44f824b344
ARC9.LoadAttachment(ATT, "eft_ammo_4630_fmjsx")


///////////////////////////////////////      eft_ammo_4630_apsx

ATT = {}

ATT.PrintName = "4.6x30mm AP SX"
ATT.CompactName = "AP SX"
ATT.Icon = Material("entities/eft_mp7_attachments/ap.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK AP SX cartridge with a 2 gram copper-plated steel core armor-piercing bullet in a brass case. The AP SX cartridge provides the highest penetration capability of the 4.6x30mm caliber, allowing the shooter to pierce basic and intermediate ballistic body protections in addition to providing outstanding results against some specialized protection models, however, due to its design, it has a high bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ARC9:GetPhrase("eft_ammo_4630_apsx.printname")

ATT.Category = {"eft_ammo_4630"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.007,
    damage = 35,
    ballisticCoeficient = 0.14,
    initialSpeed = 680,
    recoilModifier = 0.1,
    penetrationPower = 53,
    armorDamage = 46,
    penetrationChance = 0.6,
    ricochetChance = 0.6,
    heatFactor = 1.1,
    failureToFeedChance = 0.084,
    misfireChance = 0.21,
}, "pistol"))


-- EFT ID: 5ba26835d4351e0035628ff5
ARC9.LoadAttachment(ATT, "eft_ammo_4630_apsx")