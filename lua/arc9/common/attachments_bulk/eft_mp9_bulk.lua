local ATT = {}


///////////////////////////////////////      eft_mp9_silmount


ATT = {}

ATT.PrintName = "MP9 9x19 sound suppressor mount"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/sm.png", "mips smooth")
ATT.Description = [[A mount for sound suppressor installation directly onto the barrel of the MP9 9x19 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_muzzle"}


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_silencer"),
        Category = "eft_mp9_silen",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical"},
        Pos = Vector(-2, 0, 1.33),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 1),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.5,
    weight = 0.14,
}))


-- EFT ID: 5de8f237bbaf010b10528a70
ARC9.LoadAttachment(ATT, "eft_mp9_silmount")


///////////////////////////////////////      eft_mp9_silencer


ATT = {}

ATT.PrintName = "MP9 9x19 sound suppressor"
ATT.CompactName = "MP9 sup."
ATT.Icon = Material("entities/eft_mp9_attachments/s.png", "mips smooth")
ATT.Description = [[A sound suppressor for the MP9 9x19 SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_mp9_silen"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -16,
    recoilModifier = -6,
    weight = 0.29,
    velocity = 0.8,
}))


-- EFT ID: 5de8f2d5b74cd90030650c72
ARC9.LoadAttachment(ATT, "eft_mp9_silencer")

///////////////////////////////////////      eft_mp9_stockk


ATT = {}

ATT.PrintName = "MP9 stock"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/st.png", "mips smooth")
ATT.Description = [[A standard-issue foldable stock for the MP9 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Category = {"eft_mp9_stock"}

ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.87,
        VisualRecoilMult = 0.87,
        ActivateElements = {"eft_mp9_stock_unfolded"},
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        CustomizePos = Vector(16, 40, 5),
        CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_mp9_stock_folded"}
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.15,
}))


-- EFT ID: 5de910da8b6c4240ba2651b5
ARC9.LoadAttachment(ATT, "eft_mp9_stockk")


///////////////////////////////////////      eft_mp9_siderail


ATT = {}

ATT.PrintName = "MP9 side rail"
ATT.CompactName = "MP9 side"
ATT.Icon = Material("entities/eft_mp9_attachments/side.png", "mips smooth")
ATT.Description = [[A short side rail that allows installation of additional equipment on the side of the MP9 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_side"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical"},
        Pos = Vector(0, 0.09, 0.15),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 1),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.15,
    weight = 0.05,
}))


-- EFT ID: 5de8fc0b205ddc616a6bc51b
ARC9.LoadAttachment(ATT, "eft_mp9_siderail")

///////////////////////////////////////      eft_mp9_bottomrail


ATT = {}

ATT.PrintName = "MP9 bottom rail"
ATT.CompactName = "MP9 bottom"
ATT.Icon = Material("entities/eft_mp9_attachments/b.png", "mips smooth")
ATT.Description = [[A bottom rail that allows installation of additional equipment on the MP9 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_bottom"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        RejectAttachments = { 
            ["eft_foregrip_cobra"] = true,
            ["eft_foregrip_se5"] = true,
            ["eft_foregrip_se5_fde"] = true,
            ["eft_foregrip_afg"] = true,
            ["eft_foregrip_afg_fde"] = true,
            ["eft_foregrip_afg_fg"] = true,
            ["eft_foregrip_afg_od"] = true,
            ["eft_foregrip_rk6"] = true,
         },
        Pos = Vector(0, 0, -0.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.1,
    weight = 0.09,
}))


-- EFT ID: 5de8fbf2b74cd90030650c79
ARC9.LoadAttachment(ATT, "eft_mp9_bottomrail")

///////////////////////////////////////      eft_mp9_fg


ATT = {}

ATT.PrintName = "MP9-N vertical foregrip"
ATT.CompactName = "MP9 grip"
ATT.Icon = Material("entities/eft_mp9_attachments/g.png", "mips smooth")
ATT.Description = [[A standard-issue detachable vertical foregrip for the MP9-N submachine gun. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Category = {"eft_mp9_bottom_n"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/foregrip_mp9_lhik.mdl"
ATT.LHIK = true 

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 4,
    recoilModifier = -1,
    weight = 0.08,
}))


-- EFT ID: 5de8fbad2fbe23140d3ee9c4
ARC9.LoadAttachment(ATT, "eft_mp9_fg")

///////////////////////////////////////      eft_mp9_rec_std


ATT = {}

ATT.PrintName = "MP9 9x19 upper receiver"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/r.png", "mips smooth")
ATT.Description = [[An upper receiver for the MP9 SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasReceiver = true 


ATT.Category = {"eft_mp9_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0.5, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_mp9_rearsight",
        Pos = Vector(3.2, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = "eft_mp9_side",
        Pos = Vector(-3, 1, 0.1),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 8,
    weight = 0.19,
}))


-- EFT ID: 5e0090f7e9dc277128008b93
ARC9.LoadAttachment(ATT, "eft_mp9_rec_std")

///////////////////////////////////////      eft_mp9_rec_n


ATT = {}

ATT.PrintName = "MP9-N 9x19 upper receiver"
ATT.CompactName = "MP9-N"
ATT.Icon = Material("entities/eft_mp9_attachments/rn.png", "mips smooth")
ATT.Description = [[An upper receiver for the MP9-N SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasReceiver = true 


ATT.Category = {"eft_mp9_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0.5, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_mp9_rearsight",
        Pos = Vector(3.2, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = "eft_mp9_side",
        Pos = Vector(-3, 1, 0.1),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.27,
}))


-- EFT ID: 5de8e67c4a9f347bc92edbd7
ARC9.LoadAttachment(ATT, "eft_mp9_rec_n")

///////////////////////////////////////      eft_mp9_charge


ATT = {}

ATT.PrintName = "MP9 charging handle"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/c.png", "mips smooth")
ATT.Description = [[A standard-issue charging handle for MP9 and compatible systems. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBolt = true

ATT.Category = {"eft_mp9_handle"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.02,
}))


-- EFT ID: 5de922d4b11454561e39239f
ARC9.LoadAttachment(ATT, "eft_mp9_charge")

///////////////////////////////////////      eft_mp9_rs


ATT = {}

ATT.PrintName = "MP9 rear sight"
ATT.CompactName = "MP9 RS"
ATT.Icon = Material("entities/eft_mp9_attachments/rs.png", "mips smooth")
ATT.Description = [[A regular rear sight for the MP9 SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_rearsight"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.01,
}))


-- EFT ID: 5de8fb539f98ac2bc659513a
ARC9.LoadAttachment(ATT, "eft_mp9_rs")

///////////////////////////////////////      eft_mp9_mag_15


ATT = {}

ATT.PrintName = "MP9 9x19 15-round magazine"
ATT.CompactName = "MP9 15"
ATT.Icon = Material("entities/eft_mp9_attachments/15.png", "mips smooth")
ATT.Description = [[A standard 15-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_15.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_15.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 15


ATT.Category = {"eft_mag_mp9"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.06,
    malfunctionChance = 0.01,
}))


-- EFT ID: 5de8e8dafd6b4e6e2276dc32
ARC9.LoadAttachment(ATT, "eft_mp9_mag_15")


///////////////////////////////////////      eft_mp9_mag_20


ATT = {}

ATT.PrintName = "MP9 9x19 20-round magazine"
ATT.CompactName = "MP9 20"
ATT.Icon = Material("entities/eft_mp9_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20


ATT.Category = {"eft_mag_mp9"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 4,
    weight = 0.067,
    malfunctionChance = 0.02,
}))


-- EFT ID: 5de8ea8ffd6b4e6e2276dc35
ARC9.LoadAttachment(ATT, "eft_mp9_mag_20")

///////////////////////////////////////      eft_mp9_mag_25


ATT = {}

ATT.PrintName = "MP9 9x19 25-round magazine"
ATT.CompactName = "MP9 25"
ATT.Icon = Material("entities/eft_mp9_attachments/25.png", "mips smooth")
ATT.Description = [[A standard 25-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_25.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_25.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 25


ATT.Category = {"eft_mag_mp9"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.072,
    malfunctionChance = 0.03,
}))


-- EFT ID: 5de8eaadbbaf010b10528a6d
ARC9.LoadAttachment(ATT, "eft_mp9_mag_25")
///////////////////////////////////////      eft_mp9_mag_30


ATT = {}

ATT.PrintName = "MP9 9x19 30-round magazine"
ATT.CompactName = "MP9 30"
ATT.Icon = Material("entities/eft_mp9_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30


ATT.Category = {"eft_mag_mp9"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.08,
    malfunctionChance = 0.035,
}))


-- EFT ID: 5de8eac42a78646d96665d91
ARC9.LoadAttachment(ATT, "eft_mp9_mag_30")
