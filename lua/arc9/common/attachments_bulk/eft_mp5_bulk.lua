local ATT = {}


///////////////////////////////////////      eft_mp5_rec_std


ATT = {}

ATT.PrintName = "HK MP5 9x19 upper receiver"
ATT.CompactName = "MP5 upper"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_9x19_upper_receiver.png", "mips smooth")
ATT.Description = "A standard upper receiver for MP5 SMGs, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HeatCapacityMult = 0.969

ATT.HasBarrel = true 
ATT.HasReceiver = true 

ATT.Category = {"eft_mp5_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = {"eft_mp5_mount", "eft_mp5_mount_big"},
        Pos = Vector(0.25, 0, -3.27),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_mp5_rs",
        Pos = Vector(3.75, 0, -3.27),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_mp5_stock",
        Pos = Vector(6, 0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_mp5_muzzle",
        Pos = Vector(-8, 0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_mp5_hg",
        Pos = Vector(-3, 0, -2),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.544,
}))


-- EFT ID: 5926c0df86f77462f647f764
ARC9.LoadAttachment(ATT, "eft_mp5_rec_std")

///////////////////////////////////////      eft_mp5_rec_sd


ATT = {}

ATT.PrintName = "HK MP5SD 9x19 upper receiver"
ATT.CompactName = "MP5SD upper"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5sd_9x19_upper_receiver.png", "mips smooth")
ATT.Description = "An upper receiver for the MP5SD SMG, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HeatCapacityMult = 0.987
ATT.PhysBulletMuzzleVelocityMult = 0.67

ATT.HasReceiver = true 

ATT.Category = {"eft_mp5_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = {"eft_mp5_mount", "eft_mp5_mount_big"},
        Pos = Vector(0.25, 0, -3.27),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_mp5_rs",
        Pos = Vector(3.75, 0, -3.27),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_mp5_stock",
        Pos = Vector(6, 0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_mp5sd_muzzle",
        Pos = Vector(-8, 0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_mp5sd_hg",
        Pos = Vector(-3, 0, -2),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 5,
    weight = 0.73,
    velocity = -33,
}))


-- EFT ID: 5926f2e086f7745aae644231
ARC9.LoadAttachment(ATT, "eft_mp5_rec_sd")

///////////////////////////////////////      eft_mp5_rec_k


ATT = {}

ATT.PrintName = "HK MP5K 9x19 upper receiver"
ATT.CompactName = "MP5K upper"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5k_9x19_upper_receiver.png", "mips smooth")
ATT.Description = "A regular upper receiver for the MP5K SMGs, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HeatCapacityMult = 1.0176

ATT.HasBarrel = true 
ATT.HasReceiver = true 

ATT.Category = {"eft_mp5k_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = "eft_mp5_mount",
        Pos = Vector(0.25, 0, -3.27),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_mp5_rs",
        Pos = Vector(3.75, 0, -3.27),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_mp5k_stock",
        Pos = Vector(6, 0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_handguard"),
        Category = "eft_mp5k_hg",
        Pos = Vector(-3, 0, -2),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 6,
    weight = 0.45,
}))


-- EFT ID: 5d2f261548f03576f500e7b7
ARC9.LoadAttachment(ATT, "eft_mp5_rec_k")

///////////////////////////////////////      eft_mp5_charge_std


ATT = {}

ATT.PrintName = "HK MP5 cocking handle"
ATT.CompactName = "MP5 handle"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_cocking_handle.png", "mips smooth")
ATT.Description = "A standard-issue MP5 cocking handle, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBolt = true 

ATT.Category = {"eft_mp5_charge"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.126,
}))


-- EFT ID: 5926c32286f774616e42de99
ARC9.LoadAttachment(ATT, "eft_mp5_charge_std")

///////////////////////////////////////      eft_mp5_charge_k


ATT = {}

ATT.PrintName = "HK MP5K cocking handle"
ATT.CompactName = "MP5K handle"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5k_cocking_handle.png", "mips smooth")
ATT.Description = "A standard-issue MP5K cocking handle, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBolt = true 

ATT.Category = {"eft_mp5k_charge"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.11,
}))


-- EFT ID: 5d2f2d5748f03572ec0c0139
ARC9.LoadAttachment(ATT, "eft_mp5_charge_k")

///////////////////////////////////////      eft_mp5_rs_std


ATT = {}

ATT.PrintName = "HK MP5 Drum rear sight"
ATT.CompactName = "MP5 RS"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_drum_rear_sight.png", "mips smooth")
ATT.Description = "A standard rear sight for MP5 SMGs, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp5_rs"}

ATT.ExcludeElements = { "eft_mp5_mount_top_tri" }

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.04,
}))


-- EFT ID: 5926d2be86f774134d668e4e
ARC9.LoadAttachment(ATT, "eft_mp5_rs_std")

///////////////////////////////////////      eft_mp5_hg_std


ATT = {}

ATT.PrintName = "HK MP5 Wide Tropical polymer handguard"
ATT.CompactName = "Wide"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_wide_tropical_polymer_handguard.png", "mips smooth")
ATT.Description = "A polymer handguard for the HK-produced MP5 SMGs, the so-called Wide Tropical version."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true 

ATT.HeatCapacityMult = 1.03

ATT.Category = {"eft_mp5_hg"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 10,
    weight = 0.17,
}))


-- EFT ID: 5926c36d86f77467a92a8629
ARC9.LoadAttachment(ATT, "eft_mp5_hg_std")


///////////////////////////////////////      eft_mp5_hg_tl99


ATT = {}

ATT.PrintName = "HK MP5 B&T TL-99 aluminum handguard"
ATT.CompactName = "TL-99"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_b&t_tl99_aluminum_handguard.png", "mips smooth")
ATT.Description = "An aluminum handguard for the MP5 SMGs, manufactured by Brügger & Thomet. Equipped with 3 rail mounts for the installation of additional devices."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true 

ATT.HeatCapacityMult = 1.02

ATT.Category = {"eft_mp5_hg"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/lhik_nohg.mdl"
ATT.ModelOffset = Vector(0.5, -0.5, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        Pos = Vector(-2.5, 0, 1.35),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = {"eft_tactical"},
        Pos = Vector(-2.5, 1.22, 0.1),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = {"eft_tactical"},
        Pos = Vector(-2.5, -1.22, 0.1),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 13,
    weight = 0.278,
}))


-- EFT ID: 5a9548c9159bd400133e97b3
ARC9.LoadAttachment(ATT, "eft_mp5_hg_tl99")

///////////////////////////////////////      eft_mp5_hg_ptr


ATT = {}

ATT.PrintName = "HK MP5 PTR Tri-Rail handguard"
ATT.CompactName = "PTR"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_ptr_trirail_handguard.png", "mips smooth")
ATT.Description = "A handguard for HK MP5 SMG manufactured by PTR, equipped with 3 rail mounts for installation of additional tactical devices."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true 

ATT.HeatCapacityMult = 0.975

ATT.Category = {"eft_mp5_hg"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/lhik_nohg.mdl"
ATT.ModelOffset = Vector(0.5, -0.5, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        Pos = Vector(-2.5, 0, 1.05),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = {"eft_tactical"},
        Pos = Vector(-2.75, 1.1, -0.0),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = {"eft_tactical"},
        Pos = Vector(-2.75, -1.1, -0.0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 14,
    weight = 0.308,
}))


-- EFT ID: 5d19cd96d7ad1a4a992c9f52
ARC9.LoadAttachment(ATT, "eft_mp5_hg_ptr")

///////////////////////////////////////      eft_mp5_hg_caa


ATT = {}

ATT.PrintName = "HK MP5 CAA HX-5 handguard"
ATT.CompactName = "CAA HX-5"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_caa_hx5_handguard.png", "mips smooth")
ATT.Description = "The HX-5 handguard for HK MP5 SMG manufactured by Command Arms Accessories, equipped with 5 rail mounts for installation of additional tactical devices."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true 

ATT.HeatCapacityMult = 0.98

ATT.Category = {"eft_mp5_hg"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/lhik_nohg.mdl"
ATT.ModelOffset = Vector(0.5, -0.5, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        Pos = Vector(-2.5, 0, 0.8),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = {"eft_tactical"},
        Pos = Vector(-2.75, 0.9, -0.05),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = {"eft_tactical"},
        Pos = Vector(-2.75, -0.9, -0.05),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = {"eft_tactical"},
        Pos = Vector(-4.75, 0.75, -1.5),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = {"eft_tactical"},
        Pos = Vector(-4.75, -0.75, -1.5),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 12,
    weight = 0.308,
}))


-- EFT ID: 5d010d1cd7ad1a59283b1ce7
ARC9.LoadAttachment(ATT, "eft_mp5_hg_caa")

///////////////////////////////////////      eft_mp5_hg_sd


ATT = {}

ATT.PrintName = "HK MP5SD polymer handguard"
ATT.CompactName = "MP5SD HG"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5sd_polymer_handguard.png", "mips smooth")
ATT.Description = "A polymer handguard for the MP5SD SMG, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true 

ATT.HeatCapacityMult = 1.038

ATT.Category = {"eft_mp5sd_hg"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mp5_sd_lhik.mdl"
ATT.ModelOffset = Vector(0, 2.0, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 11,
    weight = 0.13,
}))


-- EFT ID: 5926f34786f77469195bfe92
ARC9.LoadAttachment(ATT, "eft_mp5_hg_sd")

///////////////////////////////////////      eft_mp5_hg_k


ATT = {}

ATT.PrintName = "HK MP5K polymer handguard"
ATT.CompactName = "MP5K HG"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5k_polymer_handguard.png", "mips smooth")
ATT.Description = "A polymer handguard for the MP5K submachine gun, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true 

ATT.HeatCapacityMult = 1.042

ATT.Category = {"eft_mp5k_hg"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mp5_k_lhik.mdl"
ATT.ModelOffset = Vector(0, 2.0, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 10,
    recoilModifier = -3,
    weight = 0.17,
}))


-- EFT ID: 5d2f259b48f0355a844acd74
ARC9.LoadAttachment(ATT, "eft_mp5_hg_k")

///////////////////////////////////////      eft_mp5_stock_a2


ATT = {}

ATT.PrintName = "HK MP5 A2 stock"
ATT.CompactName = "MP5 A2"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_a2_stock.png", "mips smooth")
ATT.Description = "A standard fixed stock for the MP5A2 submachine gun manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.HasBufferTube = true 
ATT.HasStock = true 

ATT.Category = {"eft_mp5_stock"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 6,
    recoilModifier = -24,
    weight = 0.37,
}))


-- EFT ID: 5926d3c686f77410de68ebc8
ARC9.LoadAttachment(ATT, "eft_mp5_stock_a2")

///////////////////////////////////////      eft_mp5_stock_a3


ATT = {}

ATT.PrintName = "HK MP5 A3 old model stock"
ATT.CompactName = "MP5 A3"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_a3_old_model_stock.png", "mips smooth")
ATT.Description = "A standard retracable stock for old versions of MP5A3 submachine gun manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBufferTube = true 

ATT.Category = {"eft_mp5_stock"}


ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.77,
        VisualRecoilMult = 0.77,
        ActivateElements = {"eft_mp5_stock_a3_unfolded"},
        HasStock = true
    },
    {
        PrintName = "eft_toggle_folded",
        CustomizePos = Vector(16, 40, 5),
        CustomizeRotateAnchor = Vector(16, -4.5, -5.23),
        ActivateElements = {"eft_mp5_stock_a3_folded"}
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 7,
    weight = 0.67,
}))


-- EFT ID: 5926d40686f7740f152b6b7e
ARC9.LoadAttachment(ATT, "eft_mp5_stock_a3")

///////////////////////////////////////      eft_mp5_stock_cap


ATT = {}

ATT.PrintName = "HK MP5 End Cap stock"
ATT.CompactName = "MP5 Cap"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_end_cap_stock.png", "mips smooth")
ATT.Description = "A buttstock with a sling swivel for MP5 SMGs. Manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.HasBufferTube = true 

ATT.Category = {"eft_mp5_stock"}

ATT.CustomizePos = Vector(17, 40, 5)
ATT.CustomizeRotateAnchor = Vector(17, -4.5, -5.23)

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.06,
}))


-- EFT ID: 5c07c9660db834001a66b588
ARC9.LoadAttachment(ATT, "eft_mp5_stock_cap")

///////////////////////////////////////      eft_mp5_stock_capk


ATT = {}

ATT.PrintName = "HK MP5K End Cap stock"
ATT.CompactName = "MP5K Cap"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5k_end_cap_stock.png", "mips smooth")
ATT.Description = "A buttstock with a sling swivel for MP5K SMGs. Manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.HasBufferTube = true 

ATT.Category = {"eft_mp5k_stock"}

ATT.CustomizePos = Vector(15, 30, 4.5)
ATT.CustomizeRotateAnchor = Vector(15, -4.5, -5.23)

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.05,
}))


-- EFT ID: 5d2f25bc48f03502573e5d85
ARC9.LoadAttachment(ATT, "eft_mp5_stock_capk")

///////////////////////////////////////      eft_mp5_muzzle_3lug


ATT = {}

ATT.PrintName = "HK MP5 3-lug thread protector"
ATT.CompactName = "MP5 3-lug"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_3lug_thread_protector.png", "mips smooth")
ATT.Description = "A thread protector for MP5 barrels with three lugs for installation of sound suppressors. Manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Category = {"eft_mp5_muzzle"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_mp5_muzzle_second",
        Pos = Vector(-1.33, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.08,
}))


-- EFT ID: 5926e16e86f7742f5a0f7ecb
ARC9.LoadAttachment(ATT, "eft_mp5_muzzle_3lug")

///////////////////////////////////////      eft_mp5_muzzle_navy


ATT = {}

ATT.PrintName = "HK MP5 Navy Style 3-lug suppressor adapter"
ATT.CompactName = "MP5 Navy Style"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_navy_style_3lug_suppressor_adapter.png", "mips smooth")
ATT.Description = "A 3-lug threaded adapter for installing various sound suppressors on the MP5 SMG. Manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Category = {"eft_mp5_muzzle"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_mp5_muzzle_second", "eft_9mm_muzzle"},
        Pos = Vector(-1.33, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.091,
}))


-- EFT ID: 5c0000c00db834001a6697fc
ARC9.LoadAttachment(ATT, "eft_mp5_muzzle_navy")

///////////////////////////////////////      eft_mp5_muzzle_qd


ATT = {}

ATT.PrintName = "HK MP5 B&T QD 9x19 muzzle brake"
ATT.CompactName = "B&T QD"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_b&t_qd_9x19_muzzle_brake.png", "mips smooth")
ATT.Description = "A muzzle brake for MP5-based weapons with a quick-detach lever for easy removal and installation. Manufactured by Brugger & Thomet."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_mp5_b&t_mp5_qd_muzzle_brake.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.HeatCapacityMult = 0.99

ATT.Category = {"eft_mp5_muzzle_second"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    recoilModifier = -8,
    weight = 0.128,
}))


-- EFT ID: 615d8df08004cc50514c3236
ARC9.LoadAttachment(ATT, "eft_mp5_muzzle_qd")

///////////////////////////////////////      eft_mp5_muzzle_noveske


ATT = {}

ATT.PrintName = "HK MP5 Noveske-style 9x19 muzzle brake-compensator"
ATT.CompactName = "Noveske"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_noveskestyle_9x19_muzzle_brakecompensator.png", "mips smooth")
ATT.Description = "The \"Noveske style\" muzzle brake-compensator for MP5 SMGs and compatibles. Manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_mp5_hk_noveske_style_3_lug.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.HeatCapacityMult = 0.991

ATT.Category = {"eft_mp5_muzzle_second"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -2,
    recoilModifier = -10,
    weight = 0.38,
}))


-- EFT ID: 5c07c5ed0db834001b73571c
ARC9.LoadAttachment(ATT, "eft_mp5_muzzle_noveske")

///////////////////////////////////////      eft_mp5_muzzle_sd


ATT = {}

ATT.PrintName = "HK MP5SD 9x19 sound suppressor"
ATT.CompactName = "MP5SD sup."
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5sd_9x19_sound_suppressor.png", "mips smooth")
ATT.Description = "A standard MP5SD sound suppressor manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBarrel = true 

ATT.HeatCapacityMult = 1.13
ATT.PhysBulletMuzzleVelocityMult = 1.012

ATT.Silencer = true 
ATT.BarrelLengthAdd = 3

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
-- ATT.MuzzleEffectQCA = 5

ATT.Category = {"eft_mp5sd_muzzle"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = "eft_mp5sd_mount",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

local path = ")weapons/darsu_eft/mp5/"
ATT.ShootSoundSilenced = { path .. "fire_new/mp5sd_outdoor_close_silenced_loop1.wav", path .. "fire_new/mp5sd_outdoor_close_silenced_loop2.wav", path .. "fire_new/mp5sd_outdoor_close_silenced_loop3.wav", path .. "fire_new/mp5sd_outdoor_close_silenced_loop4.wav" }
ATT.LayerSoundSilenced = path .. "fire_new/mp5sd_outdoor_close_silenced_loop_tail.wav"
ATT.DistantShootSoundSilenced = { path .. "fire_new/mp5sd_outdoor_distant_silenced_loop1.wav", path .. "fire_new//mp5sd_outdoor_distant_silenced_loop2.wav" }

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -5,
    recoilModifier = -8,
    weight = 0.496,
    velocity = 1.2,
}))


-- EFT ID: 5926d33d86f77410de68ebc0
ARC9.LoadAttachment(ATT, "eft_mp5_muzzle_sd")


///////////////////////////////////////      eft_mp5_mag_30


ATT = {}

ATT.PrintName = "HK MP5 9x19 30-round magazine"
ATT.CompactName = "MP5 30"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_9x19_30round_magazine.png", "mips smooth")
ATT.Description = "A standard 30-round 9x19 magazine for the MP5 SMG, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp5_hk_std_curved_9x19_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp5_hk_std_curved_9x19_30.mdl"

-- ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.DropMagazineSounds = ARC9EFT.MagDropMetal

ATT.Category = {"eft_mag_mp5"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.17,
    malfunctionChance = 0.03,
}))


-- EFT ID: 5926c3b286f774640d189b6b
ARC9.LoadAttachment(ATT, "eft_mp5_mag_30")

///////////////////////////////////////      eft_mp5_mag_20


ATT = {}

ATT.PrintName = "HK MP5 9x19 20-round magazine"
ATT.CompactName = "MP5 20"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_9x19_20round_magazine.png", "mips smooth")
ATT.Description = "A standard 20-round 9x19 magazine for the MP5 SMG, manufactured by Heckler & Koch."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp5_hk_kurtz_std_9x19_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp5_hk_kurtz_std_9x19_20.mdl"

-- ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.DropMagazineSounds = ARC9EFT.MagDropMetal

ATT.Category = {"eft_mag_mp5"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 3,
    weight = 0.12,
    malfunctionChance = 0.02,
}))


-- EFT ID: 5d2f213448f0355009199284
ARC9.LoadAttachment(ATT, "eft_mp5_mag_20")

///////////////////////////////////////      eft_mp5_mag_50


ATT = {}

ATT.PrintName = "HK MP5 9x19 X Products X-5 50-round drum magazine"
ATT.CompactName = "MP5 X-5 50"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_9x19_x_products_x5_50round_drum_magazine.png", "mips smooth")
ATT.Description = "A 50-round 9x19 drum magazine for the MP5 submachine gun. Manufactured by X Products."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"



ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp5_x_products_x_5_9x19_50.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp5_x_products_x_5_9x19_50.mdl"

-- ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 50

ATT.DropMagazineSounds = ARC9EFT.MagDropDrumEmpty

ATT.Category = {"eft_mag_mp5"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -10,
    weight = 0.64,
    malfunctionChance = 0.15,
}))


-- EFT ID: 5a351711c4a282000b1521a4
ARC9.LoadAttachment(ATT, "eft_mp5_mag_50")

///////////////////////////////////////      eft_mp5_mount_top


ATT = {}

ATT.PrintName = "HK MP5 MFI HK universal low profile scope mount"
ATT.CompactName = "MFI HK"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_mfi_hk_universal_low_profile_scope_mount.png", "mips smooth")
ATT.Description = "A universal mount for HK weapon systems, designed and manufactured by MFI. Designed for the installation of reflex sights and scopes."
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp5_mount"}


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0.5, 0, -0.37),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = 2
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.071,
}))


-- EFT ID: 5926dad986f7741f82604363
ARC9.LoadAttachment(ATT, "eft_mp5_mount_top")

///////////////////////////////////////      eft_mp5_mount_top_tri


ATT = {}

ATT.PrintName = "HK MP5 B&T tri-rail receiver mount"
ATT.CompactName = "B&T tri-rail"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5_b&t_trirail_receiver_mount.png", "mips smooth")
ATT.Description = "A rail mount designed by Brügger & Thomet for the HK MP5 submachine gun. It is mounted on the weapons receiver and allows additional installation of scopes and reflex sights."


ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp5_mount_big"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(1.5, 0, -0.65),
        Ang = Angle(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1.5,
    weight = 0.223,
}))


-- EFT ID: 5a966ec8a2750c00171b3f36
ARC9.LoadAttachment(ATT, "eft_mp5_mount_top_tri")

///////////////////////////////////////      eft_mp5_mount_sil


ATT = {}

ATT.PrintName = "HK MP5SD B&T tri-rail ring mount"
ATT.CompactName = "B&T ring"
ATT.Icon = Material("entities/eft_mp5_attachments/hk_mp5sd_b&t_trirail_ring_mount.png", "mips smooth")
ATT.Description = "The Tri-Rail Ring mount by B&T is installed on the MP5SD silencer and adds 3 Picatinny rails, designed for installation of additional equipment."


ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp5sd_mount"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = {"eft_tactical"},
        Pos = Vector(0.5, 1.15, 0.0),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = {"eft_tactical"},
        Pos = Vector(0.5, -1.15, 0.0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_b"),
        Category = {"eft_tactical"},
        Pos = Vector(0.5, 0, 1.15),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 1),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.082,
}))


-- EFT ID: 59c63b4486f7747afb151c1c
ARC9.LoadAttachment(ATT, "eft_mp5_mount_sil")