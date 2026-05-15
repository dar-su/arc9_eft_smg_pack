local ATT = {}

///////////////////////////////////////      eft_stm9_barrel_105


ATT = {}

ATT.PrintName = "STM-9 9x19 10.5 inch barrel"
ATT.CompactName = "STM-9 10.5\""
ATT.Icon = Material("entities/eft_stm9_attachments/105.png", "mips smooth")
ATT.Description = [[A 10.5 inches (266mm) long barrel for the STM-9 carbine, chambered in 9x19.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -10
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
-- ATT.PhysBulletMuzzleVelocityMult = 0.94
ATT.HeatCapacityMult = 1.03
ATT.Spread = 3.78 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_10i"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stm9_barrel"}
ATT.ExcludeElements = {"eft_hg_ar15_stm12", "eft_hg_ar15_stm15"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_glock_muzzle", "eft_stm9_muzzle"},
        Pos = Vector(-10.06, 0, 0.0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -2,
    recoilModifier = -6.7,
    weight = 0.409,
}))


-- EFT ID: 603372b4da11d6478d5a07ff
ARC9.LoadAttachment(ATT, "eft_stm9_barrel_105")

///////////////////////////////////////      eft_stm9_barrel_12


ATT = {}

ATT.PrintName = "STM-9 9x19 12 inch barrel"
ATT.CompactName = "STM-9 12\""
ATT.Icon = Material("entities/eft_stm9_attachments/12.png", "mips smooth")
ATT.Description = [[A 12 inches (304mm) long barrel for the STM-9 carbine, chambered in 9x19.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -12
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 1.012
ATT.HeatCapacityMult = 1.04
ATT.Spread = 2.58 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_137i"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stm9_barrel"}
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_glock_muzzle", "eft_stm9_muzzle"},
        Pos = Vector(-11.58, 0, 0.0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -3,
    recoilModifier = -7.6,
    weight = 0.5,
}))


-- EFT ID: 603372d154072b51b239f9e1
ARC9.LoadAttachment(ATT, "eft_stm9_barrel_12")

///////////////////////////////////////      eft_stm9_barrel_14


ATT = {}

ATT.PrintName = "STM-9 9x19 14 inch barrel"
ATT.CompactName = "STM-9 14\""
ATT.Icon = Material("entities/eft_stm9_attachments/14.png", "mips smooth")
ATT.Description = [[A 14 inches (355mm) long barrel for the STM-9 carbine, chambered in 9x19.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -15
ATT.RecoilMult = 0.92
ATT.VisualRecoilMult = 0.92
ATT.PhysBulletMuzzleVelocityMult = 1.032
ATT.HeatCapacityMult = 1.04
ATT.Spread = 1.89 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_145i"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stm9_barrel"}
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_glock_muzzle", "eft_stm9_muzzle"},
        Pos = Vector(-13.61, 0, 0.0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -7,
    recoilModifier = -8.9,
    weight = 0.6,
    velocity = 1,
}))


-- EFT ID: 603372f153a60014f970616d
ARC9.LoadAttachment(ATT, "eft_stm9_barrel_14")

///////////////////////////////////////      eft_stm9_barrel_16


ATT = {}

ATT.PrintName = "STM-9 9x19 16 inch barrel"
ATT.CompactName = "STM-9 16\""
ATT.Icon = Material("entities/eft_stm9_attachments/16.png", "mips smooth")
ATT.Description = [[A 16 inches (406mm) long barrel for the STM-9 carbine, chambered in 9x19.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -19
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 1.045
ATT.HeatCapacityMult = 1.08
ATT.Spread = 1.55 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_16i"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stm9_barrel"}
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_glock_muzzle", "eft_stm9_muzzle"},
        Pos = Vector(-15.61, 0, -0.01),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -10,
    recoilModifier = -10.2,
    weight = 0.8,
    velocity = 2,
}))


-- EFT ID: 603373004e02ce1eaa358814
ARC9.LoadAttachment(ATT, "eft_stm9_barrel_16")

///////////////////////////////////////      eft_stm9_magwel

ATT = {}

ATT.PrintName = "STM-9 magwell"
ATT.CompactName = "STM-9 magwell"
ATT.Icon = Material("entities/eft_stm9_attachments/w.png", "mips smooth")
ATT.Description = [[A regular magazine well for the Soyuz-TM STM-9 carbine.]]

ATT.EFTErgoAdd = 5

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stm9_magwell"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.05,
}))


-- EFT ID: 602f85fd9b513876d4338d9c
ARC9.LoadAttachment(ATT, "eft_stm9_magwel")

///////////////////////////////////////      eft_stm9_magwelg

ATT = {}

ATT.PrintName = "STM-9 magwell (Grey)"
ATT.CompactName = "STM-9 magwell"
ATT.Icon = Material("entities/eft_stm9_attachments/wg.png", "mips smooth")
ATT.Description = [[A regular magazine well for the Soyuz-TM STM-9 carbine. Grey version.]]

ATT.EFTErgoAdd = 5

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stm9_magwell"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.05,
}))


-- EFT ID: 60338ff388382f4fab3fd2c8
ARC9.LoadAttachment(ATT, "eft_stm9_magwelg")


///////////////////////////////////////      eft_rec_ar15_stm9


ATT = {}

ATT.PrintName = "STM-9 9x19 upper receiver"
ATT.CompactName = "STM-9 rec."
ATT.Icon = Material("entities/eft_stm9_attachments/rec.png", "mips smooth")
ATT.Description = [[An upper receiver for the STM-9 9x19 carbine. Equipped with a mount for attaching additional tactical devices.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasReceiver = true

ATT.Category = {"eft_stm9_upper"}

ATT.EFTErgoAdd = 4

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(2.2, 0, -2.1),
        Ang = Angle(0, 0, 0),
        ExcludeElements = {"IronsBlockingSight"},
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = {"eft_ar_rearsight", "eft_rearsight", "eft_rearsight_hk416"},
        Pos = Vector(4.75, 0, -2.13),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_barrel"),
        Category = "eft_stm9_barrel",
        Pos = Vector(-0.175, 0, -0.9),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.2, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_ar15_hguard",
        Pos = Vector(-0.15, 0, -1),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 4, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 4,
    weight = 0.27,
}))


-- EFT ID: 602e63fb6335467b0c5ac94d
ARC9.LoadAttachment(ATT, "eft_rec_ar15_stm9")


///////////////////////////////////////      eft_muzzle_stm9_std

ATT = {}

ATT.PrintName = "STM-9 9x19 muzzle brake"
ATT.CompactName = "STM-9 muzzle"
ATT.Icon = Material("entities/eft_stm9_attachments/m.png", "mips smooth")
ATT.Description = [[A standard-issue muzzle brake for the Soyuz-TM STM-9 9x19 carbines.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_all_stmarms_stm9_muzzle_brake_9x19_LOD0.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.EFTErgoAdd = -2
ATT.RecoilMult = 0.94
ATT.VisualRecoilMult = 0.94
ATT.HeatCapacityMult = 0.99
ATT.PhysBulletMuzzleVelocityMult = 1.006

ATT.Category = {"eft_stm9_muzzle"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.5,
    recoilModifier = -6,
    weight = 0.084,
}))


-- EFT ID: 60337f5dce399e10262255d1
ARC9.LoadAttachment(ATT, "eft_muzzle_stm9_std")






///////////////////////////////////////      eft_hg_ar15_stm12


ATT = {}

ATT.PrintName = "AR-15 Soyuz-TM 12 inch M-LOK handguard"
ATT.CompactName = "STM 12\""
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_soyuztm_12_inch_mlok_handguard.png", "mips smooth")
ATT.Description = [[STM 12 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_stmarms_12_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 6.5
ATT.HeatCapacityMult = 0.982
ATT.Category = {"eft_ar15_hguard"}
ATT.Folder = "Soyuz-TM"

ATT.ExcludeElements = {"barrel_10i", "gasblock_big"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_backup"),
        Category = {"eft_backupmount"},
        Pos = Vector(0, 1.2, -1.15),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 14.8-3, -1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.85, 13.5-3, 0.12),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.85, 13.5-3, 0.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_b"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset", "eft_mount_mlok_bipod"},
        Pos = Vector(0, 13.5-3, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 4.2, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 18,
    weight = 0.2,
}))


-- EFT ID: 6034e3e20ddce744014cb878
ARC9.LoadAttachment(ATT, "eft_hg_ar15_stm12")

///////////////////////////////////////      eft_hg_ar15_stm15


ATT = {}

ATT.PrintName = "AR-15 Soyuz-TM 15 inch M-LOK handguard"
ATT.CompactName = "STM 15\""
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_soyuztm_15_inch_mlok_handguard.png", "mips smooth")
ATT.Description = [[STM 15 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_stmarms_15_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 5.5
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.986
ATT.Category = {"eft_ar15_hguard"}
ATT.Folder = "Soyuz-TM"

ATT.ExcludeElements = {"barrel_10i", "barrel_145i", "gasblock_big"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_backup"),
        Category = {"eft_backupmount"},
        Pos = Vector(0, 1.2, -1.15),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 14.8, -1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.85, 13.5, 0.12),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.85, 13.5, 0.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_b"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset", "eft_mount_mlok_bipod"},
        Pos = Vector(0, 13.5, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 4.2, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 19,
    weight = 0.22,
}))


-- EFT ID: 6034e3d953a60014f970617b
ARC9.LoadAttachment(ATT, "eft_hg_ar15_stm15")

///////////////////////////////////////      eft_hg_ar15_stm9


ATT = {}

ATT.PrintName = "AR-15 Soyuz-TM 9 inch M-LOK handguard"
ATT.CompactName = "STM 9\""
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_soyuztm_9_inch_mlok_handguard.png", "mips smooth")
ATT.Description = [[STM 9 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_stmarms_9_inch_m_lok.mdl"
ATT.LHIK = true 

ATT.Category = {"eft_ar15_hguard"}
ATT.Folder = "Soyuz-TM"
ATT.EFTErgoAdd = 6
ATT.HeatCapacityMult = 0.978
ATT.ExcludeElements = {"gasblock_big"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_backup"),
        Category = {"eft_backupmount"},
        Pos = Vector(0, 1.2, -1.15),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = {"eft_frontsight"},
        Pos = Vector(0, 14.8-6, -1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.85, 13.5-6, 0.12),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.85, 13.5-6, 0.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_b"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset", "eft_mount_mlok_bipod"},
        Pos = Vector(0, 13.5-6, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_b"),
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 4.2, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 14.5,
    weight = 0.155,
}))


-- EFT ID: 6034e3cb0ddce744014cb870
ARC9.LoadAttachment(ATT, "eft_hg_ar15_stm9")


///////////////////////////////////////      eft_ar_buffertube_stm9


ATT = {}

ATT.PrintName = "AR-15 Soyuz-TM buffer tube"
ATT.CompactName = "STM Tube"
ATT.Icon = Material("entities/eft_attachments/602e3f1254072b51b239f713.png", "mips smooth")
ATT.Description = "STM Arms Receiver Extension Buffer Tube, 4-position, Com-Spec diameter will fit any AR-15-based carbine."

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_stmarms_com_spec_std.mdl"

ATT.HasBufferTube = true


-- 
ATT.SortOrder = 0
ATT.Category = "eft_ar15_buffertube"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_ar_stock",
        Pos = Vector(3, 0, 0.9),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1.5,
    recoilModifier = -0.5,
    weight = 0.162,
}))
-- EFT ID: 602e3f1254072b51b239f713
ARC9.LoadAttachment(ATT, "eft_ar_buffertube_stm9")