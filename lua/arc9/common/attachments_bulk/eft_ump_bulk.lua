local ATT = {}


///////////////////////////////////////      eft_barrel_ump_std

ATT = {}

ATT.PrintName = "HK UMP .45 ACP 8 inch barrel"
ATT.CompactName = "UMP-45 8\""
ATT.Icon = Material("entities/eft_ump_attachments/b.png", "mips smooth")
ATT.Description = [[A barrel for the HK UMP submachine gun, chambered in .45 ACP ammo, 8 inch (200mm) long.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Spread = 5.5 * ARC9.MOAToAcc
ATT.PhysBulletMuzzleVelocityMult = 0.847
ATT.HeatCapacityMult = 0.97
ATT.HeatDissipationMult = 1.06

ATT.Category = {"eft_ump_barrel"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_ump_oem"},
        Pos = Vector(0, 7.5, 0),
        Ang = Angle(0, -90, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -4,
    recoilModifier = -2.3,
    weight = 0.409,
    velocity = -15,
}))


-- EFT ID: 5fc3e4a27283c4046c5814ab
ARC9.LoadAttachment(ATT, "eft_barrel_ump_std")

///////////////////////////////////////      eft_barrel_ump_thr

ATT = {}

ATT.PrintName = "HK UMP .45 ACP 8 inch threaded barrel"
ATT.CompactName = "UMP-45 8\" thr."
ATT.Icon = Material("entities/eft_ump_attachments/bt.png", "mips smooth")
ATT.Description = [[A threaded barrel for the HK UMP submachine gun, chambered in .45 ACP ammo, 8 inches (203mm) long.]]

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Spread = 5.43 * ARC9.MOAToAcc
ATT.PhysBulletMuzzleVelocityMult = 0.849
ATT.HeatCapacityMult = 0.97
ATT.HeatDissipationMult = 1.06

ATT.Category = {"eft_ump_barrel"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = {"eft_ump_muzzle"},
        Pos = Vector(0, 7.5, 0),
        Ang = Angle(0, -90, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -5,
    recoilModifier = -2.3,
    weight = 0.415,
    velocity = -15,
}))


-- EFT ID: 6130c3dffaa1272e43151c7d
ARC9.LoadAttachment(ATT, "eft_barrel_ump_thr")

///////////////////////////////////////      eft_muzzle_omegaadapter

ATT = {}

ATT.PrintName = "SilencerCo Omega 45k Direct Thread Mount adapter"
ATT.CompactName = "DT Omega"
ATT.Icon = Material("entities/eft_ump_attachments/omegamount.png", "mips smooth")
ATT.Description = [[The Direct Thread Mount adapter for installation of SilencerCo Omega 45k sound suppressor directly onto the barrel threading.]]

-- 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_all_silencerco_omega_45k_direct_thread_adapter.mdl"

ATT.Category = {"eft_ump_muzzle", "eft_vector45_muzzle"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_silencer"),
        Category = "eft_omega_silencer",
        Pos = Vector(-0.36, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.135,
}))


-- EFT ID: 5fc4b992187fea44d52edaa9
ARC9.LoadAttachment(ATT, "eft_muzzle_omegaadapter")


///////////////////////////////////////      eft_ump_mag_25

ATT = {}

ATT.PrintName = "HK UMP .45 ACP 25-round magazine"
ATT.CompactName = "UMP 25"
ATT.Icon = Material("entities/eft_ump_attachments/mag.png", "mips smooth")
ATT.Description = [[A standard 25-round .45 ACP magazine for the UMP 45 SMG, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_hk_ump.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_hk_ump.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 25

ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }

ATT.Category = {"eft_mag_ump"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.17,
    malfunctionChance = 0.015,
}))


-- EFT ID: 5fc3e466187fea44d52eda90
ARC9.LoadAttachment(ATT, "eft_ump_mag_25")

///////////////////////////////////////      eft_stock_ump_std

ATT = {}

ATT.PrintName = "HK UMP polymer stock"
ATT.CompactName = "UMP"
ATT.Icon = Material("entities/eft_ump_attachments/st.png", "mips smooth")
ATT.Description = [[A polymer stock for the UMP SMG, manufactured by Heckler & Koch.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

-- -- 
ATT.Category = {"eft_ump_stock"}
ATT.HasStock = true

ATT.ActivateElements = {"eft_stock_ump_std_unfolded"}
ATT.ToggleStats = {
    {
        PrintName = "eft_toggle_unfolded",
        RecoilMult = 0.76,
        VisualRecoilMult = 0.76,
    },
    {
        PrintName = "eft_toggle_folded",
        ActivateElements = {"eft_stock_ump_std_folded"}
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.25,
}))


-- EFT ID: 5fc3e4ee7283c4046c5814af
ARC9.LoadAttachment(ATT, "eft_stock_ump_std")

///////////////////////////////////////      eft_muzzle_ump_oem

ATT = {}

ATT.PrintName = "HK UMP B&T OEM .45 ACP sound suppressor"
ATT.CompactName = "UMP OEM"
ATT.Icon = Material("entities/eft_ump_attachments/siloem.png", "mips smooth")
ATT.Description = [[A hard to find sound suppressor, designed for the HK UMP 45 submachine gun and utilizes a locking gate QD to allow for quick attachment and removal. Imported by H&K from Brugger & Thomet Switzerland.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HeatCapacityMult = 0.87
ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Silencer = true

ATT.Category = {"eft_ump_oem"}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -16,
    recoilModifier = -8,
    weight = 0.453,
    velocity = 0.8,
}))


-- EFT ID: 6130c4d51cb55961fa0fd49f
ARC9.LoadAttachment(ATT, "eft_muzzle_ump_oem")


///////////////////////////////////////      eft_mount_ump_bottom

ATT = {}

ATT.PrintName = "HK UMP bottom handguard rail"
ATT.CompactName = "UMP bott"
ATT.Icon = Material("entities/eft_ump_attachments/rail.png", "mips smooth")
ATT.Description = [[A bottom rail for the UMP SMG handguard, allows installation of various tactical foregrips.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ump_bottom"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, -0.35, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.07,
}))


-- EFT ID: 5fc53954f8b6a877a729eaeb
ARC9.LoadAttachment(ATT, "eft_mount_ump_bottom")

///////////////////////////////////////      eft_mount_ump_side

ATT = {}

ATT.PrintName = "HK UMP side handguard rail"
ATT.CompactName = "UMP side"
ATT.Icon = Material("entities/eft_ump_attachments/rail.png", "mips smooth")
ATT.Description = [[A side rail for the UMP SMG handguard, allows installation of additional tactical devices.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_ump_hk_side_rail.mdl"
ATT.Category = {"eft_ump_side"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = "eft_tactical",
        Pos = Vector(2, -0.3, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.05,
}))


-- EFT ID: 5fc5396e900b1d5091531e72
ARC9.LoadAttachment(ATT, "eft_mount_ump_side")