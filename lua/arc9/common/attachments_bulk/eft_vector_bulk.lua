local ATT = {}


///////////////////////////////////////      eft_barrel_vector45_5

ATT = {}

ATT.PrintName = "KRISS Vector .45 ACP 5 inch barrel"
ATT.CompactName = "Vector 5\""
ATT.Icon = Material("entities/eft_vector_attachments/455.png", "mips smooth")
ATT.Description = [[A 5 inch (140mm) barrel for the KRISS Vector .45 ACP submachine gun.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

-- ATT.EFTErgoAdd = -5
-- ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
-- ATT.Spread = 5.43 * ARC9.MOAToAcc
-- ATT.PhysBulletMuzzleVelocityMult = 0.849
-- ATT.HeatCapacityMult = 0.97
-- ATT.HeatDissipationMult = 1.06

ATT.Category = {"eft_vector45_barrel"}
ATT.ExcludeElements = {"eft_mount_vector_modular"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_vector45_muzzle"},
        Pos = Vector(0, 3.63, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_vector45_5")

///////////////////////////////////////      eft_barrel_vector45_6

ATT = {}

ATT.PrintName = "KRISS Vector .45 ACP 6 inch barrel"
ATT.CompactName = "Vector 6\""
ATT.Icon = Material("entities/eft_vector_attachments/456.png", "mips smooth")
ATT.Description = [[A 6 inch (170mm) barrel for the KRISS Vector .45 ACP submachine gun.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96
-- ATT.Spread = 5.43 * ARC9.MOAToAcc
-- ATT.PhysBulletMuzzleVelocityMult = 0.849
-- ATT.HeatCapacityMult = 0.97
-- ATT.HeatDissipationMult = 1.06

ATT.Category = {"eft_vector45_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_vector45_muzzle"},
        Pos = Vector(0, 4.55, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_vector45_6")


///////////////////////////////////////      eft_barrel_vector9_5

ATT = {}

ATT.PrintName = "KRISS Vector 9x19 5 inch barrel"
ATT.CompactName = "Vector 5\""
ATT.Icon = Material("entities/eft_vector_attachments/95.png", "mips smooth")
ATT.Description = [[A 5 inch (140mm) threaded barrel for the KRISS Vector 9x19 submachine gun.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

-- ATT.EFTErgoAdd = -5
-- ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
-- ATT.Spread = 5.43 * ARC9.MOAToAcc
-- ATT.PhysBulletMuzzleVelocityMult = 0.849
-- ATT.HeatCapacityMult = 0.97
-- ATT.HeatDissipationMult = 1.06

ATT.Category = {"eft_vector9_barrel"}
ATT.ExcludeElements = {"eft_mount_vector_modular"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle","eft_vector9_muzzle"},
        Pos = Vector(0, 3.40, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_vector9_5")

///////////////////////////////////////      eft_barrel_vector9_6

ATT = {}

ATT.PrintName = "KRISS Vector 9x19 6 inch barrel"
ATT.CompactName = "Vector 6\""
ATT.Icon = Material("entities/eft_vector_attachments/96.png", "mips smooth")
ATT.Description = [[A 6 inch (170mm) threaded barrel for the KRISS Vector 9x19 submachine gun.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96
-- ATT.Spread = 5.43 * ARC9.MOAToAcc
-- ATT.PhysBulletMuzzleVelocityMult = 0.849
-- ATT.HeatCapacityMult = 0.97
-- ATT.HeatDissipationMult = 1.06

ATT.Category = {"eft_vector9_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle","eft_vector9_muzzle"},
        Pos = Vector(0, 4.3, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_barrel_vector9_6")


///////////////////////////////////////      eft_vector_mag_13

ATT = {}

ATT.PrintName = "Glock .45 ACP 13-round magazine"
ATT.CompactName = "Glock .45 13"
ATT.Icon = Material("entities/eft_vector_attachments/13.png", "mips smooth")
ATT.Description = [[A standard-issue 13-round magazine for the Glock 21, chambered in .45 ACP.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_glock21_13.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_glock21_13.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 13

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.MalfunctionMeanShotsToFailMult = 0.985

ATT.Category = {"eft_mag_vector45"}

ARC9.LoadAttachment(ATT, "eft_vector_mag_13")

///////////////////////////////////////      eft_vector_mag_30

ATT = {}

ATT.PrintName = "Glock .45 ACP KRISS G30 MagEx 30-round magazine"
ATT.CompactName = "G30 MagEx"
ATT.Icon = Material("entities/eft_vector_attachments/30.png", "mips smooth")
ATT.Description = [[A G30 MagEx 30-round magazine for .45 ACP rounds, made to fit Glock pistols and other weapons of the same caliber. Manufactured by KRISS.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_glock_magex_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_glock_magex_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.MalfunctionMeanShotsToFailMult = 0.975

ATT.Category = {"eft_mag_vector45"}

ARC9.LoadAttachment(ATT, "eft_vector_mag_30")

///////////////////////////////////////      eft_stock_vector_std

ATT = {}

ATT.PrintName = "KRISS Vector Gen.2 folding stock"
ATT.CompactName = "Vector stock"
ATT.Icon = Material("entities/eft_vector_attachments/s.png", "mips smooth")
ATT.Description = [[A 2nd generation folding stock for the KRISS Vector submachine gun.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7", ["Recoil while unfolded"] = "-22%" }
-- ATT.VisualRecoilMult = 0.66
-- ATT.RecoilMult = 0.66

ATT.Category = {"eft_vector_stock"}
-- ATT.HasStock = true

ATT.ActivateElements = {"eft_stock_vector_std_unfolded"}
ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.78,
        VisualRecoilMult = 0.78,
        HasStock = true
    },
    {
        PrintName = "Folded",
        ActivateElements = {"eft_stock_vector_std_folded"}
    },
}

-- ATT.AdvancedCamoSupport = true
ARC9.LoadAttachment(ATT, "eft_stock_vector_std")

///////////////////////////////////////      eft_stock_vector_adap

ATT = {}

ATT.PrintName = "KRISS Vector non-folding stock adapter"
ATT.CompactName = "Vector adap."
ATT.Icon = Material("entities/eft_vector_attachments/adap.png", "mips smooth")
ATT.Description = [[A non-folding adapter for the installation of telescopic stock buffer tubes on the KRISS Vector submachine gun.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
-- ATT.VisualRecoilMult = 0.66
-- ATT.RecoilMult = 0.66

ATT.Category = {"eft_vector_stock"}
ATT.HasStock = true

ATT.Attachments = {
    {
        PrintName = "Buffer Tube",
        Category = {"eft_ar15_buffertube", "eft_vector_stockcaap"},
        Pos = Vector(1.92, -0.76, 0.48),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_stock_vector_adap")

///////////////////////////////////////      eft_stock_vector_cap

ATT = {}

ATT.PrintName = "KRISS Vector Pistol Sling adapter"
ATT.CompactName = "Vector Sling"
ATT.Icon = Material("entities/eft_vector_attachments/cap.png", "mips smooth")
ATT.Description = [[A pistol sling adapter for the KRISS Vector SMG.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
-- ATT.VisualRecoilMult = 0.66
-- ATT.RecoilMult = 0.66

ATT.Category = {"eft_vector_stockcaap"}

ARC9.LoadAttachment(ATT, "eft_stock_vector_cap")



///////////////////////////////////////      eft_mount_vector_bottom

ATT = {}

ATT.PrintName = "KRISS Vector bottom rail"
ATT.CompactName = "Vector bott"
ATT.Icon = Material("entities/eft_vector_attachments/bot.png", "mips smooth")
ATT.Description = [[A bottom rail for the KRISS Vector submachine gun, allows installation of tactical foregrips and accessories.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_vector_bottom"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, -0.35, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_vector_bottom")

///////////////////////////////////////      eft_mount_vector_modular

ATT = {}

ATT.PrintName = "KRISS Vector Mk.5 modular rail"
ATT.CompactName = "Vector Mk.5"
ATT.Icon = Material("entities/eft_vector_attachments/mod.png", "mips smooth")
ATT.Description = [[The Mk.5 modular system allows you to install additional equipment on the handguard.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_vector_bottom"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(-0.5, -0.35, 0.3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "R. Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-2.5, 0.95, -1.06),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "L. Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-2.5, -1.62, -1.06),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_vector_modular")

///////////////////////////////////////      eft_mount_vector_side

ATT = {}

ATT.PrintName = "KRISS Vector side rail"
ATT.CompactName = "Vector side"
ATT.Icon = Material("entities/eft_vector_attachments/side.png", "mips smooth")
ATT.Description = [[A side rail for the KRISS Vector submachine gun, allows installation of additional tactical equipment.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_vector_side_rail.mdl"
ATT.Category = {"eft_vector_side"}
ATT.ExcludeElements = {"eft_mount_vector_modular"}

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = "eft_tactical",
        Pos = Vector(2, -0.3, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_vector_side")


///////////////////////////////////////      eft_muzzle_vector9_fh

ATT = {}

ATT.PrintName = "KRISS Vector 9x19 flash hider"
ATT.CompactName = "Vector 9x19"
ATT.Icon = Material("entities/eft_ump_attachments/vectorfh.png", "mips smooth")
ATT.Description = [[A standard-issue flash hider for the KRISS Vector .45 ACP SMG.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
-- ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_vector_kriss_flash_hider_9.mdl"

ATT.Category = {"eft_vector9_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_vector9_fh")

///////////////////////////////////////      eft_muzzle_vector9_cap

ATT = {}

ATT.PrintName = "KRISS Vector 9x19 thread protection cap"
ATT.CompactName = "Vector cap"
ATT.Icon = Material("entities/eft_ump_attachments/vectorthr.png", "mips smooth")
ATT.Description = [[A thread protector cap for the KRISS Vector 9x19 barrel.]]

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_vector_kriss_thread_protector_9.mdl"

ATT.Category = {"eft_vector9_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_vector9_cap")



-- theyre already registered in ump pack bleh
///////////////////////////////////////      eft_muzzle_vector_fh

ATT = {}

ATT.PrintName = "KRISS Vector .45 ACP flash hider"
ATT.CompactName = "Vector .45"
ATT.Icon = Material("entities/eft_ump_attachments/vectorfh.png", "mips smooth")
ATT.Description = [[A standard-issue flash hider for the KRISS Vector .45 ACP SMG.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.VisualRecoilMult = 0.93
ATT.RecoilMult = 0.93
ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_vector_kriss_flash_hider.mdl"

ATT.Category = {"eft_ump_muzzle", "eft_vector45_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_vector_fh")

///////////////////////////////////////      eft_muzzle_vector_cap

ATT = {}

ATT.PrintName = "KRISS Vector .45 ACP thread protection cap"
ATT.CompactName = "Vector cap"
ATT.Icon = Material("entities/eft_ump_attachments/vectorthr.png", "mips smooth")
ATT.Description = [[A thread protector cap for the KRISS Vector .45 ACP barrel.]]

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_vector_kriss_thread_protector.mdl"

ATT.Category = {"eft_ump_muzzle", "eft_vector45_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_vector_cap")


///////////////////////////////////////      eft_vector_skin_fde

ATT = {}

ATT.PrintName = "FDE"
ATT.CompactName = "FDE"
ATT.Icon = Material("entities/arc9_eft_vector9.png", "mips smooth")
ATT.Description = [[FDE color instead of black VECTOR parts.

Not presents in EFT, custom att.]]

ATT.SortOrder = -90

ATT.SubMaterial1 = "models/weapons/arc9/darsu_eft/vector/weapon_tdi_kriss_vector_gen_2_9x19_lod0"

ATT.Category = {"eft_custom_slot_vector",}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_slot_vector"},
 
    },
}

ATT.Max = 1

ARC9.LoadAttachment(ATT, "eft_vector_skin_fde")


///////////////////////////////////////      eft_vector_skin_black

ATT = {}

ATT.PrintName = "BLACK"
ATT.CompactName = "BLACK"
ATT.Icon = Material("entities/arc9_eft_vector45.png", "mips smooth")
ATT.Description = [[BLACK color instead of FDE VECTOR parts.

Not presents in EFT, custom att.]]

ATT.SortOrder = -90

ATT.SubMaterial1 = "models/weapons/arc9/darsu_eft/vector/weapon_tdi_kriss_vector_gen_2_1143x23_lod0"

ATT.Category = {"eft_custom_slot_vector",}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_slot_vector"},
 
    },
}

ATT.Max = 1

ARC9.LoadAttachment(ATT, "eft_vector_skin_black")