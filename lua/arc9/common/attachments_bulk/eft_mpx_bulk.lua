local ATT = {}

///////////////////////////////////////      eft_mpx_ch_1x

ATT = {}

ATT.PrintName = "MPX single latch charging handle"
ATT.CompactName = "MPX 1x"
ATT.Icon = Material("entities/eft_mcx_attachments/1x.png", "mips smooth")
ATT.Description = [[A retracting handle with one latch for MPX-based weapons. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_1x")

///////////////////////////////////////      eft_mpx_ch_2x

ATT = {}

ATT.PrintName = "MPX double latch charging handle"
ATT.CompactName = "MPX 2x"
ATT.Icon = Material("entities/eft_mcx_attachments/2x.png", "mips smooth")
ATT.Description = [[A retracting handle with two latches for MPX-based weapons. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_2x")

///////////////////////////////////////      eft_mpx_ch_sch

ATT = {}

ATT.PrintName = "MPX Geissele SCH charging handle"
ATT.CompactName = "MPX SCH"
ATT.Icon = Material("entities/eft_mcx_attachments/sch.png", "mips smooth")
ATT.Description = [[The SCH (Super Charging Handle) charging handle with two latches for MPX-based weapons, manufactured by Geissele.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_sch")

///////////////////////////////////////      eft_mpx_ch_2x2

ATT = {}

ATT.PrintName = "MPX GEN 2 ambidextrous charging handle"
ATT.CompactName = "MPX 2x GEN2"
ATT.Icon = Material("entities/eft_mcx_attachments/2x2.png", "mips smooth")
ATT.Description = [[n ambidextrous charging handle with two latches for the second generation of the MPX SMG. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.EFTErgoAdd = 1.5
ATT.CustomPros = { Ergonomics = "+1.5" }

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_2x2")

///////////////////////////////////////      eft_mpx_rec


ATT = {}

ATT.PrintName = "MPX GEN1 9x19 upper receiver"
ATT.CompactName = "MPX GEN1"
ATT.Icon = Material("entities/eft_mcx_attachments/mpxrec.png", "mips smooth")
ATT.Description = [[A 1st generation upper receiver for the SIG MPX submachine gun, manufactured by SIG Sauer. Features a mount for attaching additional equipment.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasReceiver = true

ATT.Category = {"eft_mpx_upper"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
-- ATT.HeatCapacityMult = 0.989

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(2.92, 0, -2.71),
        Ang = Angle(0, 0, 0),
        ExcludeElements = {"IronsBlockingSight"},
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = {"eft_rearsight"},
        Pos = Vector(5.5, 0, -2.71),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_mpx_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0.8, 0, 1.3),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_mpx_hguard",
        Pos = Vector(-0.65, 0, -0.192),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 1.75, 1),
    },

    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_u"),
        Category = {"eft_tactical_top", "eft_backupmount"},
        Pos = Vector(-1.2, 0, -2.71),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    -- add mrp45 and tac thing
}

ARC9.LoadAttachment(ATT, "eft_mpx_rec")

///////////////////////////////////////      eft_mpx_barrel105

ATT = {}

ATT.PrintName = "MPX 9x19 10.5 inch barrel"
ATT.CompactName = "MPX 10.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/105.png", "mips smooth")
ATT.Description = [[A 10.5 inch (265mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 265
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_265mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -7
ATT.CustomCons = { Ergonomics = "-7" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 1.03
-- ATT.PhysBulletMuzzleVelocityMult = 0.84
ATT.Spread = 4.3 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_265mm"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle"},
        Pos = Vector(-9.95, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel105")

///////////////////////////////////////      eft_mpx_barrel355

ATT = {}

ATT.PrintName = "MPX 9x19 14 inch barrel"
ATT.CompactName = "MPX 14\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpx14.png", "mips smooth")
ATT.Description = [[A 14 inch (355mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 355
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_355mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 4
ATT.MuzzleEffectQCA = 8

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -14
ATT.CustomCons = { Ergonomics = "-14" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.HeatCapacityMult = 1.06
ATT.PhysBulletMuzzleVelocityMult = 1.04
ATT.Spread = 1.38 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_355mm"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-13.52, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel355")

///////////////////////////////////////      eft_mpx_barrel203

ATT = {}

ATT.PrintName = "MPX 9x19 203mm barrel"
ATT.CompactName = "MPX 203mm"
ATT.Icon = Material("entities/eft_mcx_attachments/mpx203.png", "mips smooth")
ATT.Description = [[A 203mm long barrel for MPX-based weapons chambered for 9x19 ammunition.]]
ATT.SortOrder = 203
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_203mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 4
ATT.MuzzleEffectQCA = 6

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -6
ATT.CustomCons = { Ergonomics = "-6" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.03
ATT.PhysBulletMuzzleVelocityMult = 0.877
ATT.Spread = 5.16 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_203mm"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-7.47, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel203")

///////////////////////////////////////      eft_mpx_barrel114

ATT = {}

ATT.PrintName = "MPX 9x19 4.5 inch barrel"
ATT.CompactName = "MPX 4.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpx45.png", "mips smooth")
ATT.Description = [[A 4.5 inch (114mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 114
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_114mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 1

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
-- ATT.RecoilMult = 0.97
-- ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.06
ATT.PhysBulletMuzzleVelocityMult = 0.84
ATT.Spread = 8.59 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_114mm"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-3.82, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel114")

///////////////////////////////////////      eft_mpx_barrel165

ATT = {}

ATT.PrintName = "MPX 9x19 6.5 inch barrel"
ATT.CompactName = "MPX 6.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpx65.png", "mips smooth")
ATT.Description = [[A 6.5 inch (165mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 165
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
ATT.MuzzleEffectQCA = 5

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.9
ATT.Spread = 6.88 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_165mm"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel165")

///////////////////////////////////////      eft_mpx_barrel165sd

ATT = {}

ATT.PrintName = "MPX-SD 9x19 165mm ported barrel"
ATT.CompactName = "MPX-SD 6.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxsd.png", "mips smooth")
ATT.Description = [[A special 165mm long barrel for the MPX-SD. Chambered for 9x19 ammunition.]]
ATT.SortOrder = 165
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm_ported.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
-- ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.838
ATT.Spread = 6.19 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_165mm_sd"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_mpxsd_muzzle"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel165sd")

///////////////////////////////////////      eft_mpx_sd_silencer

ATT = {}

ATT.PrintName = "MPX-SD 9x19 integrated sound suppressor"
ATT.CompactName = "MPX-SD"
ATT.Icon = Material("entities/eft_mcx_attachments/mpxsup.png", "mips smooth")
ATT.Description = [[An integrated sound suppressor manufactured by SIG Sauer for the special "silent" version of the MPX, designated as MPX-SD.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.85
ATT.VisualRecoilMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 1.0075
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 3
ATT.MuzzleEffectQCA = 9

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/silencer_sig_mpx_sd.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4

ATT.Category = {"eft_mpxsd_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_sd_silencer")

///////////////////////////////////////      eft_mpx_barrel121ronin

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 4.75 inch Ported SD Barrel"
ATT.CompactName = "MPX-SD 4.75\""
ATT.Icon = Material("entities/eft_mcx_attachments/br8.png", "mips smooth")
ATT.Description = [[A 4.75 inch ported barrel from the MPX-SD conversion kit designed for installation of the special suppressor. Manufactured by Ronin Arms.]]
ATT.SortOrder = 121
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm_ported.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
-- ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
-- ATT.RecoilMult = 0.98
-- ATT.VisualRecoilMult = 0.98
-- ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.838
ATT.Spread = 8.35 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_165mm_sd"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_mpxsd_ronin8_muzzle"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel121ronin")

///////////////////////////////////////      eft_mpx_sd_silencer_ronin8

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 8 inch SD Suppressor"
ATT.CompactName = "Ronin 8"
ATT.Icon = Material("entities/eft_mcx_attachments/r8.png", "mips smooth")
ATT.Description = [[An 8 inch suppressor from the MPX-SD conversion kit designed for installation over the custom ported barrel. Manufactured by Ronin Arms.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.91
ATT.VisualRecoilMult = 0.91
ATT.PhysBulletMuzzleVelocityMult = 1.0075
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 3
ATT.MuzzleEffectQCA = 7

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/silencer_sig_mpx_sd.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4

ATT.Category = {"eft_mpxsd_ronin8_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_sd_silencer_ronin8")

///////////////////////////////////////      eft_mpx_barrel171ronin

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 6.75 inch Ported SD Barrel"
ATT.CompactName = "MPX-SD 6.75\""
ATT.Icon = Material("entities/eft_mcx_attachments/br12.png", "mips smooth")
ATT.Description = [[A 6.75 inch ported barrel from the MPX-SD conversion kit designed for installation of the special suppressor. Manufactured by Ronin Arms.]]
ATT.SortOrder = 171
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm_ported.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
-- ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
-- ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.838
ATT.Spread = 6.6 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_171mm_sd"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_mpxsd_ronin12_muzzle"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel171ronin")

///////////////////////////////////////      eft_mpx_sd_silencer_ronin12

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 12 inch SD Suppressor"
ATT.CompactName = "Ronin 12"
ATT.Icon = Material("entities/eft_mcx_attachments/r12.png", "mips smooth")
ATT.Description = [[An 12 inch suppressor from the MPX-SD conversion kit designed for installation over the custom ported barrel. Manufactured by Ronin Arms.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -7
ATT.CustomCons = { Ergonomics = "-7" }
ATT.RecoilMult = 0.87
ATT.VisualRecoilMult = 0.91
ATT.PhysBulletMuzzleVelocityMult = 1.0075
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 4
ATT.MuzzleEffectQCA = 8

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/silencer_sig_mpx_sd.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4

ATT.Category = {"eft_mpxsd_ronin12_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_sd_silencer_ronin12")


-- ronin 8, 12 barrels and their silencers


///////////////////////////////////////      eft_mpx_hg_gen1

ATT = {}

ATT.PrintName = "MPX GEN1 6 inch handguard"
ATT.CompactName = "MPX GEN1 6\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg1.png", "mips smooth")
ATT.Description = [[ A 6 inch handguard for the first generation of the SIG Sauer MPX SMG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen1.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.976
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_114mm", 
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.9, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mpx2"},
        Pos = Vector(-1.035, 3.28, -0.9),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mpx2"},
        Pos = Vector(1.035, 3.28, -0.9),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = {"eft_mount_mpx4"},
        Pos = Vector(0, 3.31, 0.1),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen1")

///////////////////////////////////////      eft_mpx_hg_105

ATT = {}

ATT.PrintName = "MPX Midwest Industries 10.5 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 10.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg105.png", "mips smooth")
ATT.Description = [[The Midwest Industries 10.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_105_inch_m_lok.mdl"
ATT.ModelAngleOffset = Angle(0, -90, 0)
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 0.964
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm", 
    "barrel_165mm_sd", 
    "barrel_114mm", 
    "barrel_203mm",
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 9.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 7.65-2.5, 0.3-1.1),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 7.65-2.5, 0.3-1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.75, 9.25 - 1.5, 0.85 -1),
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.75, 9.25- 1.5, 0.85-1),
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_u"),
        Category = {"eft_tactical_top", "eft_backupmount"},
        Pos = Vector(0, 6.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_105")

///////////////////////////////////////      eft_mpx_hg_14

ATT = {}

ATT.PrintName = "MPX Midwest Industries 14 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 14\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg14.png", "mips smooth")
ATT.Description = [[The Midwest Industries 14 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_14_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 0.952
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm", 
    "barrel_165mm_sd", 
    "barrel_114mm", 
    "barrel_203mm",
    "barrel_265mm"
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 9.5+3.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 7.65-1.5, 0.3-1.1),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 7.65-1.5, 0.3-1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok",},
        Pos = Vector(0.75, 9.25, 0.85 -1),
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok",},
        Pos = Vector(-0.75, 9.25, 0.85-1),
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.95, 11, -0.3-1.02),
        Ang = Angle(180, 90, -20),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.95, 11, -0.3-1.02),
        Ang = Angle(0, -90, 20),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset", "eft_mount_mlok_bipod"},
        Pos = Vector(0, 11.5, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_u"),
        Category = {"eft_tactical_top", "eft_backupmount"},
        Pos = Vector(0, 6.5+2, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_14")

///////////////////////////////////////      eft_mpx_hg_45

ATT = {}

ATT.PrintName = "MPX Midwest Industries 4.5 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 4.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg45.png", "mips smooth")
ATT.Description = [[The Midwest Industries 4.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_45_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 15
ATT.CustomPros = { Ergonomics = "+15" }
-- ATT.RecoilMult = 0.96
-- ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 1.009
ATT.Category = {"eft_mpx_hguard"}

-- ATT.ExcludeElements = {"barrel_260mm", "eft_silencer_r43_556","eft_gas_ar15_rg", "eft_gas_ar15_m4fs"}


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 3.25, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 4-2.25, 0.3-1.1),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 4-2.25, 0.3-1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0, 4-2.25, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_45")

///////////////////////////////////////      eft_mpx_hg_65

ATT = {}

ATT.PrintName = "MPX Midwest Industries 6.5 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 6.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg65.png", "mips smooth")
ATT.Description = [[The Midwest Industries 6.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_65_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }
-- ATT.RecoilMult = 0.96
-- ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 1.02
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm_sd", 
    "barrel_114mm",
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 5.1, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 6-2.0, 0.3-1.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 6-2.0, 0.3-1.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 2.75, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_65")

///////////////////////////////////////      eft_mpx_hg_14oem

ATT = {}

ATT.PrintName = "MPX Lancer OEM 14 inch M-LOK handguard"
ATT.CompactName = "MPX OEM 14\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg14oem.png", "mips smooth")
ATT.Description = [[The Lancer OEM 14 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_lancer_oem_14_inch.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.025
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm", 
    "barrel_165mm_sd", 
    "barrel_114mm", 
    "barrel_203mm",
    "barrel_265mm"
}

local meowoffset = Vector(0, -0.5, -0.9)

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1, 8.1, 0.0) + meowoffset,
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1, 8.1, 0.0) + meowoffset,
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.75, 10.5, 0.7) + meowoffset,
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.75, 10.5, 0.7) + meowoffset,
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 4, 1) + meowoffset,
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset", "eft_mount_mlok_bipod"},
        Pos = Vector(0, 12.5, 1) + meowoffset,
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_14oem")


///////////////////////////////////////      eft_mpx_hg_gen1_4

ATT = {}

ATT.PrintName = "MPX GEN1 4 inch handguard"
ATT.CompactName = "MPX GEN1 4\""
ATT.Icon = Material("entities/eft_mcx_attachments/g14.png", "mips smooth")
ATT.Description = [[A 4 inch handguard for the first generation of the SIG Sauer MPX SMG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen1_4_inch.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.976
ATT.Category = {"eft_mpx_hguard"}


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.9-1.6, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mpx2"},
        Pos = Vector(-1.035, 3.28-1.6, -0.9),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mpx2"},
        Pos = Vector(1.035, 3.28-1.6, -0.9),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = {"eft_mount_mpx2"},
        Pos = Vector(0, 3.31-1.64, 0.1),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen1_4")

///////////////////////////////////////      eft_mpx_hg_gen1_8

ATT = {}

ATT.PrintName = "MPX GEN1 8 inch handguard"
ATT.CompactName = "MPX GEN1 8\""
ATT.Icon = Material("entities/eft_mcx_attachments/g18.png", "mips smooth")
ATT.Description = [[A 8 inch handguard for the first generation of the SIG Sauer MPX SMG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen1_8_inch.mdl"
ATT.ModelAngleOffset = Angle(0, -90, 0)
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.985
ATT.VisualRecoilMult = 0.985
ATT.HeatCapacityMult = 0.976
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_114mm", 
    "barrel_165mm", 
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.9+1.6, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mpx2"},
        Pos = Vector(-1.035, 3.28+1.6, -0.9),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mpx2"},
        Pos = Vector(1.035, 3.28+1.6, -0.9),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = {"eft_mount_mpx4"},
        Pos = Vector(0, 3.31, 0.1),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen1_8")


///////////////////////////////////////      eft_mpx_hg_gen2_4

ATT = {}

ATT.PrintName = "MPX GEN2 4 inch M-LOK handguard"
ATT.CompactName = "MPX GEN2 4\""
ATT.Icon = Material("entities/eft_mcx_attachments/g24.png", "mips smooth")
ATT.Description = [[A 4 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen2_4_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }
ATT.RecoilMult = 0.995
ATT.VisualRecoilMult = 0.995
ATT.Category = {"eft_mpx_hguard"}


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 3.25, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 4-1.75, 0.3-1.25),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 4-1.75, 0.3-1.25),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0, 4-1.75, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen2_4")

///////////////////////////////////////      eft_mpx_hg_gen2_6

ATT = {}

ATT.PrintName = "MPX GEN2 6 inch M-LOK handguard"
ATT.CompactName = "MPX GEN2 6\""
ATT.Icon = Material("entities/eft_mcx_attachments/g26.png", "mips smooth")
ATT.Description = [[A 6 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen2_6_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.RecoilMult = 0.985
ATT.VisualRecoilMult = 0.985
ATT.HeatCapacityMult = 1.02
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_114mm",
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.8, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 6-2.0, 0.3-1.25),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 6-2.0, 0.3-1.25),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 2.75, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen2_6")

///////////////////////////////////////      eft_mpx_hg_gen2_8

ATT = {}

ATT.PrintName = "MPX GEN2 8 inch M-LOK handguard"
ATT.CompactName = "MPX GEN2 8\""
ATT.Icon = Material("entities/eft_mcx_attachments/g28.png", "mips smooth")
ATT.Description = [[A 8 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen2_8_inch_m_lok.mdl"
ATT.ModelAngleOffset = Angle(0, -90, 0)
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 1.02
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm_sd", 
    "barrel_114mm",
    "barrel_165mm",
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 6.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 7.65-2.5, 0.3-1.25),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 7.65-2.5, 0.3-1.25),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mlok_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen2_8")


///////////////////////////////////////      eft_mpx_mag_20

ATT = {}

ATT.PrintName = "MPX 9x19 20-round magazine"
ATT.CompactName = "MPX 20"
ATT.Icon = Material("entities/eft_mcx_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round capacity 9x19mm MPX magazine, manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_20")

///////////////////////////////////////      eft_mpx_mag_30

ATT = {}

ATT.PrintName = "MPX 9x19 30-round magazine"
ATT.CompactName = "MPX 30"
ATT.Icon = Material("entities/eft_mcx_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity semitransparent 9x19mm MPX magazine, manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30_tr.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30.mdl"
ATT.TranslucentPass = true 

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.MalfunctionMeanShotsToFailMult = 0.95

ATT.Category = {"eft_mag_mpx"}

ATT.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_001",
        "patron_002",
        "patron_003",
        "patron_004",
        "patron_005",
        "patron_006",
        "patron_007",
        "patron_008",
        "patron_009",
        "patron_010",
        "patron_011",
        "patron_012",
        "patron_013",
        "patron_014",
        "patron_015",
        "patron_016",
        "patron_017",
        "patron_018",
        "patron_019",
        "patron_020",
        "patron_021",
        "patron_022",
        "patron_023",
        "patron_024",
        "patron_025",
        "patron_026",
        "patron_027",
        "patron_028",
        "patron_029",
        "patron_030",
        "spring_start",
        "spring_end",
    },
}

ATT.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_001",
    [3] = "patron_002",
    [4] = "patron_003",
    [5] = "patron_004",
    [6] = "patron_005",
    [7] = "patron_006",
    [8] = "patron_007",
    [9] = "patron_008",
    [10] = "patron_009",
    [11] = "patron_010",
    [12] = "patron_011",
    [13] = "patron_012",
    [14] = "patron_013",
    [15] = "patron_014",
    [16] = "patron_015",
    [17] = "patron_016",
    [18] = "patron_017",
    [19] = "patron_018",
    [20] = "patron_019",
    [21] = "patron_020",
    [22] = "patron_021",
    [23] = "patron_022",
    [24] = "patron_023",
    [25] = "patron_024",
    [26] = "patron_025",
    [27] = "patron_026",
    [28] = "patron_027",
    [29] = "patron_028",
    [30] = "patron_029",
    [31] = "patron_030",
    
}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_30")

///////////////////////////////////////      eft_mpx_mag_30_orig

ATT = {}

ATT.PrintName = "MPX 9x19 30-round magazine (original)"
ATT.CompactName = "MPX 30"
ATT.Icon = Material("entities/eft_mcx_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity semitransparent 9x19mm MPX magazine, manufactured by SIG Sauer.

Original non-transparent version like in eft]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.MalfunctionMeanShotsToFailMult = 0.95

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_30_orig")

///////////////////////////////////////      eft_mpx_mag_41

ATT = {}

ATT.PrintName = "MPX 9x19 TTI \"Base Pad +11\" 41-round magazine"
ATT.CompactName = "MPX TTI 41"
ATT.Icon = Material("entities/eft_mcx_attachments/41.png", "mips smooth")
ATT.Description = [[A standard 30-round 9x19 MPX magazine that comes with an attached +11-round base pad, produced by Taran Tactical Innovations. This brings the total magazine capacity to 41 rounds.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_41.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_41.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 41

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.958

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_41")

///////////////////////////////////////      eft_mpx_mag_50

ATT = {}

ATT.PrintName = "MPX 9x19 F5 MFG 50-round drum magazine"
ATT.CompactName = "MPX Drum 50"
ATT.Icon = Material("entities/eft_mcx_attachments/50.png", "mips smooth")
ATT.Description = [[An MPX 9x19 drum magazine with a 50-round capacity. Manufactured by F5 MFG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_50.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_50.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 50

ATT.DropMagazineTime = 0.67

ATT.EFTErgoAdd = -15
ATT.CustomCons = { Ergonomics = "-15" }
ATT.MalfunctionMeanShotsToFailMult = 0.832

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_50")


///////////////////////////////////////      eft_mpx_muzzle_a2

ATT = {}

ATT.PrintName = "MPX A2 9x19 flash hider"
ATT.CompactName = "MPX A2"
ATT.Icon = Material("entities/eft_mcx_attachments/mpxmuz.png", "mips smooth")
ATT.Description = [[The A2 Bird Cage flash hider, designed for installation on MPX 9x19 SMGs, manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_mpx_sig_mpx_a2.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.SpreadMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.Category = {"eft_mpx_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_muzzle_a2")

///////////////////////////////////////      eft_muzzle_taccom

ATT = {}

ATT.PrintName = "TACCOM Carbine Brake multi-caliber muzzle brake"
ATT.CompactName = "TACCOM"
ATT.Icon = Material("entities/eft_mcx_attachments/taccom.png", "mips smooth")
ATT.Description = [[The "Carbine Brake" muzzle brake manufactured by TACCOM for SIG MPX. It can also be used with compatible .308 rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_all_taccom_carabine_brake.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 1.5

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.88
ATT.VisualRecoilMult = 0.88
ATT.SpreadMult = 0.98
ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.HeatCapacityMult = 1.013

ATT.Category = {"eft_taccom"}

ARC9.LoadAttachment(ATT, "eft_muzzle_taccom")


///////////////////////////////////////      eft_mount_mpx_2

ATT = {}

ATT.PrintName = "MPX GEN1 handguard 2 inch rail"
ATT.CompactName = "MPX 2\""
ATT.Icon = Material("entities/eft_mcx_attachments/m2.png", "mips smooth")
ATT.Description = [[The 2 inch SIG Sauer GEN1 handguard rail adapter allows you to install additional equipment on the 1st generation SIG MPX handguard.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mpx_mounts.mdl"
ATT.ModelBodygroups = "0"

ATT.Category = {"eft_mount_mpx2"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = "eft_tactical",
        Pos = Vector(-0.0, -0.37, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_mpx_2")


///////////////////////////////////////      eft_mount_mpx_4


ATT = {}

ATT.PrintName = "MPX GEN1 handguard 4 inch rail"
ATT.CompactName = "MPX 4\""
ATT.Icon = Material("entities/eft_mcx_attachments/m4.png", "mips smooth")
ATT.Description = [[The 4 inch SIG Sauer GEN1 handguard rail adapter allows you to install additional equipment on the 1st generation SIG MPX handguard.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mpx_mounts.mdl"
ATT.ModelBodygroups = "1"
-- ATT.ModelOffset = Vector(1, 0, 0)

ATT.Category = {"eft_mount_mpx4"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        Pos = Vector(1.65, -0.38, 0),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, -1),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_mpx_4")


///////////////////////////////////////      eft_mpx_pgrip_std

ATT = {}

ATT.PrintName = "MPX pistol grip"
ATT.CompactName = "MPX"
ATT.Description = [[A polymer MPX pistol grip is fit for installation on the first and second generations of MPX. Manufactured by SIG Sauer.]]
ATT.Icon = Material("entities/eft_mcx_attachments/grip.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_mpx.mdl"

ATT.HasGrip = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.Category = {"eft_ar15_pgrip", "eft_mpx_pgrip"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_mpx_pgrip_std")



///////////////////////////////////////      eft_mcx_stock_colap

ATT = {}

ATT.PrintName = "MPX/MCX collapsing/telescoping stock"
ATT.CompactName = "MPX/MCX"
ATT.Description = [[A telescopic retractable stock for early issues of MCX/MPX manufactured by SIG Sauer.

note: it cannot collapse in actual game but why not! i want it be collapsable]]
ATT.Icon = Material("entities/eft_mcx_attachments/tele.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_all_sig_mpx_mcx_early_type.mdl"
ATT.ModelOffset = Vector(0.1, 0, 0.42)

ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.74,
        VisualRecoilMult = 0.74,
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        EFTFoldStock = true
    },
}

ATT.DrawFunc = function(swep, model)
    if swep:GetValue("EFTFoldStock") then
        -- model:SetBodygroup(0, swep:GetClass() == "arc9_eft_mpx" and 2 or 1)
        model:SetBodygroup(0, 1)
    else
        model:SetBodygroup(0, 0)
    end
end

ATT.EFTErgoAdd = 17
ATT.CustomPros = { Ergonomics = "+17", ["Recoil while extended"] = "-26%" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_colap")

///////////////////////////////////////      eft_mcx_stock_brace

ATT = {}

ATT.PrintName = "MPX/MCX SB Tactical Pistol Stabilizing Brace"
ATT.CompactName = "MPX brace"
ATT.Description = [[A telescopic retractable brace stock for MCX/MPX manufactured by SB Tactical.

note: it cannot collapse in actual game but why not! i want it be collapsable]]
ATT.Icon = Material("entities/eft_mcx_attachments/brace.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_all_sig_mpx_brace.mdl"
ATT.ModelOffset = Vector(0.1, 0, 0.42)

ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.84,
        VisualRecoilMult = 0.84,
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        EFTFoldStock = true
    },
}

ATT.DrawFunc = function(swep, model)
    if swep:GetValue("EFTFoldStock") then
        -- model:SetBodygroup(0, swep:GetClass() == "arc9_eft_mpx" and 2 or 1)
        model:SetBodygroup(0, 1)
    else
        model:SetBodygroup(0, 0)
    end
end

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12", ["Recoil while extended"] = "-16%" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_brace")