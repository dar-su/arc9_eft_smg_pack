local ATT = {}


///////////////////////////////////////      eft_kedr_silmount


ATT = {}

ATT.PrintName = "PP-91-01 \"Kedr-B\" threaded suppressor adapter"
ATT.CompactName = "Kedr-B"
ATT.Icon = Material("entities/eft_kedr_attachments/adap.png", "mips smooth")
ATT.Description = [[A muzzle thread piece for the PP-91-01 "Kedr-B" submachine gun with an expansion chamber, allows installation of sound suppressors.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_kedr_muzzle"}

ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93

ATT.Attachments = {
    {
        PrintName = "Silencer",
        Category = "eft_kedr_silen",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_kedr_silmount")


///////////////////////////////////////      eft_kedr_silencer


ATT = {}

ATT.PrintName = "PP-91-01 \"Kedr-B\" 9x18PM sound suppressor"
ATT.CompactName = "Kedr-B"
ATT.Icon = Material("entities/eft_kedr_attachments/sup.png", "mips smooth")
ATT.Description = [[A standard-issue detachable PP-91-01 Kedr-B 9x18PM sound suppressor. It can be removed for compact carrying purposes.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -16
ATT.CustomCons = { Ergonomics = "-16" }
ATT.RecoilMult = 0.91
ATT.VisualRecoilMult = 0.91
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_kedr_silen"}

ARC9.LoadAttachment(ATT, "eft_kedr_silencer")

///////////////////////////////////////      eft_kedr_stockk


ATT = {}

ATT.PrintName = "Folded PP-91 \"Kedr\" stock"
ATT.CompactName = "Folded"
ATT.Icon = Material("entities/eft_kedr_attachments/stock.png", "mips smooth")
ATT.Description = [[Folded stock meow]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 1.25
ATT.VisualRecoilMult = 1.25

ATT.CustomizePos = Vector(17.5, 22, 5)
ATT.CustomizeRotateAnchor = Vector(17.5, -4.28, -5.23)

ATT.Category = {"eft_kedr_stock"}
ATT.ExcludeElements = {"eft_mount_kedr_ris"}

ATT.HasStock = false 

ARC9.LoadAttachment(ATT, "eft_kedr_stockk")


///////////////////////////////////////      eft_kedr_pg


ATT = {}

ATT.PrintName = "PP-91 \"Kedr\" polymer pistol grip"
ATT.CompactName = "\"Kedr\" grip"
ATT.Icon = Material("entities/eft_kedr_attachments/grip.png", "mips smooth")
ATT.Description = [[A ZMZ-produced polymer pistol grip for PP-91 Kedr family weapons.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGrip = true
ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Category = {"eft_kedr_pgrip"}

ARC9.LoadAttachment(ATT, "eft_kedr_pg")

///////////////////////////////////////      eft_mount_kedr_ris

ATT = {}

ATT.PrintName = "PP-91 \"Kedr\" Rotor 43 RIS mount"
ATT.CompactName = "\"Kedr\" RIS"
ATT.Icon = Material("entities/eft_kedr_attachments/ris.png", "mips smooth")
ATT.Description = [[A RIS mount for PP-91 Kedr SMG, manufactured by Rotor 43.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mount_kedr"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "eft_optic_small",
        Pos = Vector(-0.1, 0, 0.8),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8,
    },
    {
        PrintName = "B. Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-0.2, 0, -0.7),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_kedr_ris")


///////////////////////////////////////      eft_kedr_mag_20


ATT = {}

ATT.PrintName = "PP-91 \"Kedr\" 9x18PM 20-round magazine"
ATT.CompactName = "\"Kedr\" 20"
ATT.Icon = Material("entities/eft_kedr_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round capacity metal magazine for PP-91 Kedr-based 9x18PM SMGs, manufactured by ZMZ.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_kedr_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_kedr_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.Category = {"eft_mag_kedr"}

ARC9.LoadAttachment(ATT, "eft_kedr_mag_20")

///////////////////////////////////////      eft_kedr_mag_30


ATT = {}

ATT.PrintName = "PP-91 \"Kedr\" 9x18PM 30-round magazine"
ATT.CompactName = "\"Kedr\" 30"
ATT.Icon = Material("entities/eft_kedr_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity metal magazine for PP-91 Kedr-based 9x18PM SMGs, manufactured by ZMZ.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_kedr_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_kedr_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.MalfunctionMeanShotsToFailMult = 0.96

ATT.Category = {"eft_mag_kedr"}

ARC9.LoadAttachment(ATT, "eft_kedr_mag_30")


///////////////////////////////////////      eft_kedr_conv_b

ATT = {}

ATT.PrintName = "PP-91-01 \"Kedr-B\""
ATT.CompactName = "PP-91-01 \"Kedr-B\""
ATT.Icon = Material("entities/eft_kedr_attachments/kebrb.png", "mips smooth")
ATT.Description = [[A rare silenced version of the PP-91 Kedr submachine gun, denominated as PP-91-01 Kedr-B.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_kedr_conv"}
ARC9.LoadAttachment(ATT, "eft_kedr_conv_b")

///////////////////////////////////////      eft_kedr_conv_klin

ATT = {}

ATT.PrintName = "PP-9 \"Klin\""
ATT.CompactName = "PP-9 \"Klin\""
ATT.Icon = Material("entities/eft_kedr_attachments/klin.png", "mips smooth")
ATT.Description = [[The PP-9 Klin is a further evolution of the Kedr submachine gun. It has a higher rate of fire and its chamber is designed to use the 9x18 PMM cartridge. It was produced from 1996 to 2002 by order of the Ministry of Internal Affairs.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_kedr_conv"}

ATT.RPM = 1000
ATT.ActivateElements = {"pmmallowed"}

ARC9.LoadAttachment(ATT, "eft_kedr_conv_klin")











///////////////////////////////////////      eft_ppsh41_barrel_269

ATT = {}

ATT.PrintName = "PPSh-41 7.62x25 10.6 inch barrel"
ATT.CompactName = "PPSh41 10.6\""
ATT.Icon = Material("entities/eft_ppsh41_attachments/b.png", "mips smooth")
ATT.Description = [[A 10.6 inch (269mm) long barrel for the PPSh-41, chambered in 7.62x25.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.SpreadOverride = 7.22 * ARC9.MOAToAcc

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_barrel"}

ARC9.LoadAttachment(ATT, "eft_ppsh41_barrel_269")

///////////////////////////////////////      eft_ppsh41_dust

ATT = {}

ATT.PrintName = "PPSh-41 dust cover"
ATT.CompactName = "PPSh41"
ATT.Icon = Material("entities/eft_ppsh41_attachments/dc.png", "mips smooth")
ATT.Description = [[A standard-issue dust cover for PPSh-41.]]

ATT.HasReciever = true 

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_dc"}

ARC9.LoadAttachment(ATT, "eft_ppsh41_dust")

///////////////////////////////////////      eft_ppsh41_stock

ATT = {}

ATT.PrintName = "PPSh-41 stock"
ATT.CompactName = "PPSh41"
ATT.Icon = Material("entities/eft_ppsh41_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue wooden stock for the PPSh-41 submachine gun.]]

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 28
ATT.CustomPros = { Ergonomics = "+28" }
ATT.RecoilMult = 0.8
ATT.VisualRecoilMult = 0.8

ATT.Category = {"eft_stock_ppsh41"}

ARC9.LoadAttachment(ATT, "eft_ppsh41_stock")

///////////////////////////////////////      eft_ppsh41_mag_35

ATT = {}

ATT.PrintName = "PPSh-41 7.62x25 35-round magazine"
ATT.CompactName = "PPSh 35"
ATT.Icon = Material("entities/eft_ppsh41_attachments/35.png", "mips smooth")
ATT.Description = [[A 35-round 7.62x25 steel magazine for the PPSh-41.]]

ATT.EFTErgoAdd = -3
ATT.CustomPros = { Ergonomics = "-3" }
ATT.MalfunctionMeanShotsToFailMult = 0.955

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ppsh_35.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_mag"}

ATT.HasMag = true

ATT.ClipSize = 35
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_ppsh41_mag_35")

///////////////////////////////////////      eft_ppsh41_mag_71

ATT = {}

ATT.PrintName = "PPSh-41 7.62x25 71-round drum magazine"
ATT.CompactName = "PPSh 71"
ATT.Icon = Material("entities/eft_ppsh41_attachments/71.png", "mips smooth")
ATT.Description = [[A 71-round 7.62x25 steel drum magazine for the PPSh-41.]]

ATT.EFTErgoAdd = -9
ATT.CustomPros = { Ergonomics = "-9" }
ATT.MalfunctionMeanShotsToFailMult = 0.795

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ppsh_71.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ppsh41_mag"}

ATT.HasMag = true

ATT.ClipSize = 71
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_ppsh41_mag_71")