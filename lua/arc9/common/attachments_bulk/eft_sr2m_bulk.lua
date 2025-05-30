local ATT = {}

///////////////////////////////////////      eft_sr2m_handstop


ATT = {}

ATT.PrintName = "SR-2M 9x21 hand stopper"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/hs.png", "mips smooth")
ATT.Description = [[A hand stopper for the barrel of the SR-2M "Veresk" 9x21 submachine gun. Manufactured by TsNIItochmash. Protects the shooter's hand from moving forward and getting possible burns by powder gases.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_muzzle"}

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ARC9.LoadAttachment(ATT, "eft_sr2m_handstop")


///////////////////////////////////////      eft_sr2m_silencer


ATT = {}

ATT.PrintName = "SR-2M 9x21 sound suppressor (SV-1381)"
ATT.CompactName = "SV-1381"
ATT.Icon = Material("entities/eft_sr2m_attachments/s.png", "mips smooth")
ATT.Description = [[A silencer for the SR-2M "Veresk" 9x21 submachine gun, manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -14
ATT.CustomCons = { Ergonomics = "-14" }
ATT.RecoilMult = 0.91
ATT.VisualRecoilMult = 0.91
ATT.PhysBulletMuzzleVelocityMult = 1.01
ATT.HeatCapacityMult = 0.82
ATT.SpreadMult = 0.99

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_sr2m_muzzle"}

ARC9.LoadAttachment(ATT, "eft_sr2m_silencer")


///////////////////////////////////////      eft_sr2m_hg_std

ATT = {}

ATT.PrintName = "SR-2M polymer handguard"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/hg.png", "mips smooth")
ATT.Description = [[A standard-issue SR-2M "Veresk" polymer handguard for burn protection. Manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_hg"}

ATT.HasHG = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = "eft_sr2m_rail",
        Pos = Vector(0.75, 0.0, 0.4),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = "eft_sr2m_rail",
        Pos = Vector(-0.75, 0.0, 0.4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_hg_std")

///////////////////////////////////////      eft_sr2m_pg_std

ATT = {}

ATT.PrintName = "SR-2M pistol grip"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/pg.png", "mips smooth")
ATT.Description = [[A standard-issue pistol grip for SR-2M "Veresk". Manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_pg"}

ATT.HasGrip = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ARC9.LoadAttachment(ATT, "eft_sr2m_pg_std")

///////////////////////////////////////      eft_sr2m_hg_blk

ATT = {}

ATT.PrintName = "SR-2M polymer handguard (Black)"
ATT.CompactName = "SR-2M (B)"
ATT.Icon = Material("entities/eft_sr2m_attachments/hgb.png", "mips smooth")
ATT.Description = [[A standard-issue SR-2M "Veresk" polymer handguard for burn protection. Manufactured by TsNIItochmash.

Black version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_hg"}

ATT.HasHG = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = "eft_sr2m_rail",
        Pos = Vector(0.75, 0.0, 0.4),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = "eft_sr2m_rail",
        Pos = Vector(-0.75, 0.0, 0.4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_hg_blk")

///////////////////////////////////////      eft_sr2m_pg_blk

ATT = {}

ATT.PrintName = "SR-2M pistol grip (Black)"
ATT.CompactName = "SR-2M (B)"
ATT.Icon = Material("entities/eft_sr2m_attachments/pgb.png", "mips smooth")
ATT.Description = [[A standard-issue pistol grip for SR-2M "Veresk". Manufactured by TsNIItochmash.

Black version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_pg"}

ATT.HasGrip = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ARC9.LoadAttachment(ATT, "eft_sr2m_pg_blk")


///////////////////////////////////////      eft_sr2m_rail_big

ATT = {}

ATT.PrintName = "SR-2M side rail"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/side.png", "mips smooth")
ATT.Description = [[A side rail for SR-2M "Veresk" that allows installation of additional tactical equipment.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_sr2m_tochmash_med_rail.mdl"

ATT.Category = {"eft_sr2m_rail"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = "eft_tactical",
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-0.4, -0.36, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_rail_big")

///////////////////////////////////////      eft_sr2m_rail_short

ATT = {}

ATT.PrintName = "SR-2M short side rail"
ATT.CompactName = "SR-2M short."
ATT.Icon = Material("entities/eft_sr2m_attachments/sides.png", "mips smooth")
ATT.Description = [[A short side rail for SR-2M "Veresk" that allows installation of additional tactical equipment.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_sr2m_tochmash_short_rail.mdl"

ATT.Category = {"eft_sr2m_rail"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = "eft_tactical",
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-0.3, -0.32, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_rail_short")

///////////////////////////////////////      eft_sr2m_rec_std

ATT = {}

ATT.PrintName = "SR-2M dust cover"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/dc.png", "mips smooth")
ATT.Description = [[A standard-issue dust cover for SR-2M "Veresk" submachine gun, manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_rec"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = {"eft_sr2m_mount"},
        Pos = Vector(2.1+0.52, 0, -0.3+0.1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_rec_std")

///////////////////////////////////////      eft_sr2m_b17

ATT = {}

ATT.PrintName = "SR-2M Zenit B-17 mount"
ATT.CompactName = "B-17"
ATT.Icon = Material("entities/eft_sr2m_attachments/b17.png", "mips smooth")
ATT.Description = [[The B-17 mount is designed to switch from SR-2M's Dovetail top rail standard to Picatinny rail. Manufactured by Zenit.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_mount"}

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large_nosniper", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(-0.4, 0, -0.4),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_b17")

///////////////////////////////////////      eft_sr2m_optic


ATT = {}

ATT.PrintName = "SR-2M KP-SR2 reflex sight"
ATT.CompactName = "KP-SR2"
ATT.Icon = Material("entities/eft_sr2m_attachments/opt.png", "mips smooth")
ATT.Description = [[The KP-SR2 reflex sight is designed to increase the efficiency of firing SR-2M "Veresk" submachine gun. The sight facilitates the process of aiming a weapon at a target, especially in low light conditions, and allows you to increase combat efficiency. Manufactured by TsNIItochmash.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/darsu_eft/mods/scope_sr2m_tochmash_kp.mdl"

ATT.Category = {"eft_sr2m_mount"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }

ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0, 7.5, -1.45),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 53
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/arc9_eft_shared/reticles/new/scope_sr2m_tochmash_kp_sr2_marks.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$flags", bit.bor(ATT.HoloSightReticle:GetInt("$flags"), 128)) -- additive
ATT.HoloSightReticle:SetVector("$color2", Vector(5, 0.75, 0.75)) -- bright color
ATT.HoloSightSize = 510
ATT.HoloSightColorable = false

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_aux"),
        Category = {"eft_sr2m_optic_aux"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(3, 0, 1.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_optic")

///////////////////////////////////////      eft_sr2m_optic_shade

ATT = {}

ATT.PrintName = "KP-SR2 sight shade"
ATT.CompactName = "KP-SR2"
ATT.Icon = Material("entities/eft_sr2m_attachments/sh.png", "mips smooth")
ATT.Description = [[A sight shade for the KP-SR2 reflex sight. Protects the lens against mechanical impacts and suppresses flaring. Manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/tactical_sr2_killflash.mdl"

ATT.Category = {"eft_sr2m_optic_aux"}

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ARC9.LoadAttachment(ATT, "eft_sr2m_optic_shade")

///////////////////////////////////////      eft_sr2m_stock_std


ATT = {}

ATT.PrintName = "SR-2M folding stock"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/st.png", "mips smooth")
ATT.Description = [[A folding stock for SR-2M submachine gun, manufactured by TsNIItochmash. The buttstock has a spring-loaded butt plate which reduces the time it takes to shoulder the weapon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7", ["Recoil while extended"] = "-27%" }

ATT.Category = {"eft_sr2m_stock"}

ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.73,
        VisualRecoilMult = 0.73,
        ActivateElements = {"eft_sr2m_stock_std_unfolded"},
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_sr2m_stock_std_folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_stock_std")

///////////////////////////////////////      eft_sr2m_stock_mp


ATT = {}

ATT.PrintName = "SR-2MP folding stock"
ATT.CompactName = "SR-2MP"
ATT.Icon = Material("entities/eft_sr2m_attachments/st2.png", "mips smooth")
ATT.Description = [[A folding stock for SR-2MP submachine gun, manufactured by TsNIItochmash. The buttstock has a spring-loaded butt plate which reduces the time it takes to shoulder the weapon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8", ["Recoil while extended"] = "-27%" }

ATT.Category = {"eft_sr2m_stock"}

ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.73,
        VisualRecoilMult = 0.73,
        ActivateElements = {"eft_sr2m_stock_mp_unfolded"},
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_sr2m_stock_mp_folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_stock_mp")


///////////////////////////////////////      eft_sr2m_mag_20


ATT = {}

ATT.PrintName = "SR-2M 9x21 20-round magazine"
ATT.CompactName = "SR-2M 20"
ATT.Icon = Material("entities/eft_sr2m_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round capacity magazine for SR-2M "Veresk", manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.MalfunctionMeanShotsToFailMult = 0.965

ATT.Category = {"eft_mag_sr2m"}

ARC9.LoadAttachment(ATT, "eft_sr2m_mag_20")


///////////////////////////////////////      eft_sr2m_mag_30


ATT = {}

ATT.PrintName = "SR-2M 9x21 30-round magazine"
ATT.CompactName = "SR-2M 30"
ATT.Icon = Material("entities/eft_sr2m_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity magazine for SR-2M "Veresk", manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.965

ATT.Category = {"eft_mag_sr2m"}

ARC9.LoadAttachment(ATT, "eft_sr2m_mag_30")