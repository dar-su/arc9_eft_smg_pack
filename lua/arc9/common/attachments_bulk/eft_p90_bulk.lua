local ATT = {}


///////////////////////////////////////      eft_p90_barrel_264


ATT = {}

ATT.PrintName = "FN P90 5.7x28 10.5 inch barrel"
ATT.CompactName = "P90 10.5\""
ATT.Icon = Material("entities/eft_p90_attachments/barrel.png", "mips smooth")
ATT.Description = [[A 10.5 inch (264mm) barrel for P90 based weapons, chambered in 5.7x28 ammo.]]

ATT.HasBarrel = true 

ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.EFTErgoAdd = -3
ATT.PhysBulletMuzzleVelocityMult = 1.012

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_barrel"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -2,
    recoilModifier = -5.3,
    weight = 0.5,
}))


-- EFT ID: 5cc701aae4a949000e1ea45c
ARC9.LoadAttachment(ATT, "eft_p90_barrel_264")


///////////////////////////////////////      eft_p90_barrel_407


ATT = {}

ATT.PrintName = "FN P90 5.7x28 16 inch barrel"
ATT.CompactName = "P90 16\""
ATT.Icon = Material("entities/eft_p90_attachments/barrel_long.png", "mips smooth")
ATT.Description = [[A 16 inch (407mm) barrel for P90 based weapons, chambered in 5.7x28 ammo.]]

ATT.HasBarrel = true 

ATT.VisualRecoilMult = 0.87
ATT.RecoilMult = 0.87
ATT.EFTErgoAdd = -13
ATT.HeatCapacityMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 1.022

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
-- ATT.CustomizePos = Vector(14.5, 22, 4)
ATT.MuzzleEffectQCA = 5
ATT.BarrelLengthAdd = 5

ATT.Category = {"eft_p90_barrel"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -16.5,
    recoilModifier = -17.1,
    weight = 0.8,
    velocity = 9,
}))


-- EFT ID: 5cc701d7e4a94900100ac4e7
ARC9.LoadAttachment(ATT, "eft_p90_barrel_407")


///////////////////////////////////////      eft_p90_butt_di


ATT = {}

ATT.PrintName = "FN P90 Damage Industries buttpad"
ATT.CompactName = "P90 DI"
ATT.Icon = Material("entities/eft_p90_attachments/butt_big.png", "mips smooth")
ATT.Description = [[An ergonomic butt-pad for the FN P90 SMG, also serves as the stock extension. Manufactured by Damage Industries.]]

ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.EFTErgoAdd = 2

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_butt"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 1.5,
    recoilModifier = -3,
    weight = 0.09,
}))


-- EFT ID: 5cc700d4e4a949000f0f0f28
ARC9.LoadAttachment(ATT, "eft_p90_butt_di")


///////////////////////////////////////      eft_p90_butt_std


ATT = {}

ATT.PrintName = "FN P90 buttpad"
ATT.CompactName = "P90 butt"
ATT.Icon = Material("entities/eft_p90_attachments/butt.png", "mips smooth")
ATT.Description = [[A standard-issue butt-pad for the P90 SMG, produced by Fabrique Nationale Herstal.]]

ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.EFTErgoAdd = 2

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_butt"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    recoilModifier = -1,
    weight = 0.06,
}))


-- EFT ID: 5cc700cae4a949035e43ba72
ARC9.LoadAttachment(ATT, "eft_p90_butt_std")


///////////////////////////////////////      eft_p90_charge_km


ATT = {}

ATT.PrintName = "FN P90 K&M The Handler charging handle"
ATT.CompactName = "TheHandler"
ATT.Icon = Material("entities/eft_p90_attachments/thehandle.png", "mips smooth")
ATT.Description = [[An ergomomic folding charging handle for FN P90, manufactured by K&M Aerospace. The charging handle is made out of aircraft grade aluminum and anodized to mil spec type III, class 2. Includes a ball detent that keeps the handle folded in when not in use.]]

ATT.HasHandle = true 

ATT.EFTErgoAdd = 1

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_charge", "eft_ar57_charge"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 1,
    weight = 0.019,
}))


-- EFT ID: 5cc6ea85e4a949000e1ea3c3
ARC9.LoadAttachment(ATT, "eft_p90_charge_km")


///////////////////////////////////////      eft_p90_charge_std


ATT = {}

ATT.PrintName = "FN P90 charging handle"
ATT.CompactName = "P90"
ATT.Icon = Material("entities/eft_p90_attachments/handle.png", "mips smooth")
ATT.Description = [[A standard-issue charging handle for the P90 SMG, manufactured by Fabrique Nationale Herstal.]]

ATT.HasHandle = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_charge"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.017,
}))


-- EFT ID: 5cc6ea78e4a949000e1ea3c1
ARC9.LoadAttachment(ATT, "eft_p90_charge_std")


///////////////////////////////////////      eft_p90_effen_rec


ATT = {}

ATT.PrintName = "FN P90 EFFEN 90 5.7x28 upper receiver"
ATT.CompactName = "EFFEN 90"
ATT.Icon = Material("entities/eft_p90_attachments/top_effen.png", "mips smooth")
ATT.Description = [[EFFEN 90 is a low-profile upper receiver for the P90 submachine gun, manufactured by Fabrique Nationale Herstal.]]

ATT.EFTErgoAdd = -1
ATT.HeatCapacityMult = 1.04
ATT.HeatDissipationMult = 1.048

ATT.HasReceiver = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_rec"}


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0, 0.5, -0.8),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        -- ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_p90_effen_side_mount"},
        Pos = Vector(1.35, 2.05, 0.8),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(-0.5, 0, -0.5),
        -- ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_p90_effen_side_mount"},
        Pos = Vector(-1.35, 2.05, 0.8),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(-0.5, 0, -0.5),
        -- ExtraSightDistance = 8
    },
}


ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.25,
}))


-- EFT ID: 5cc700ede4a949033c734315
ARC9.LoadAttachment(ATT, "eft_p90_effen_rec")


///////////////////////////////////////      eft_p90_effen_siderail


ATT = {}

ATT.PrintName = "FN P90 EFFEN 90 receiver rail"
ATT.CompactName = "EFFEN 90"
ATT.Icon = Material("entities/eft_p90_attachments/mount_side.png", "mips smooth")
ATT.Description = [[The EFFEN 90 rail allows installation of additional tactical equipment on the handguard of the same name.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/effen_90_side_rail.mdl"

ATT.Category = {"eft_p90_effen_side_mount"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical_top", "eft_tactical"},
        Pos = Vector(-0.05, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.2),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.05,
}))


-- EFT ID: 5cc7012ae4a949001252b43e
ARC9.LoadAttachment(ATT, "eft_p90_effen_siderail")


///////////////////////////////////////      eft_p90_mag_std


ATT = {}

ATT.PrintName = "FN P90 5.7x28 50-round magazine"
ATT.CompactName = "P90"
ATT.Icon = Material("entities/eft_p90_attachments/mag.png", "mips smooth")
ATT.Description = [[A 50-round polymer magazine for the 5.7x28mm FN P90 SMG.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -5

ATT.ChamberSize = 1
ATT.ClipSize = 50
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.Model = "models/weapons/arc9/darsu_eft/mods/p90mag_tr.mdl"
ATT.TranslucentPass = true
ATT.TranslucentPassExtraMat = Material( "models/weapons/arc9/darsu_eft/p90/mag_p90_fn_p90_std_57x28_50_LOD0_Glass_Solid" )
ATT.TranslucentPassBlend = 0.75

ATT.Category = {"eft_p90_mag"}
ATT.ActivateElements = {"p90_50rnd"}

ATT.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",
    [5] = "patron_in_mag4",
    [6] = "patron_in_mag5",
    [7] = "patron_in_mag6",
    [8] = "patron_in_mag7",
    [9] = "patron_in_mag8",
    [10] = "patron_in_mag9",
    [11] = "patron_in_mag10",
    [12] = "patron_in_mag11",
    [13] = "patron_in_mag12",
    [14] = "patron_in_mag13",
    [15] = "patron_in_mag14",
    [16] = "patron_in_mag15",
    [17] = "patron_in_mag16",
    [18] = "patron_in_mag17",
    [19] = "patron_in_mag18",
    [20] = "patron_in_mag19",
    [21] = "patron_in_mag20",
    [22] = "patron_in_mag21",
    [23] = "patron_in_mag22",
    [24] = "patron_in_mag23",
    [25] = "patron_in_mag24",
    [26] = "patron_in_mag25",
    [27] = "patron_in_mag26",
    [28] = "patron_in_mag27",
    [29] = "patron_in_mag28",
    [30] = "patron_in_mag29",
    [31] = "patron_in_mag30",
    [32] = "patron_in_mag31",
    [33] = "patron_in_mag32",
    [34] = "patron_in_mag33",
    [35] = "patron_in_mag34",
    [36] = "patron_in_mag35",
    [37] = "patron_in_mag36",
    [38] = "patron_in_mag37",
    [39] = "patron_in_mag38",
    [40] = "patron_in_mag39",
    [41] = "patron_in_mag40",
    [42] = "patron_in_mag41",
    [43] = "patron_in_mag42",
    [44] = "patron_in_mag43",
    [45] = "patron_in_mag44",
    [46] = "patron_in_mag45",
    [47] = "patron_in_mag46",
    [48] = "patron_in_mag47",
    [49] = "patron_in_mag48",
    [50] = "patron_in_mag49",
    [51] = "patron_in_mag50",
}

ATT.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "magspring_start",
        "magspring_end",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5",
        "patron_in_mag6",
        "patron_in_mag7",
        "patron_in_mag8",
        "patron_in_mag9",
        "patron_in_mag10",
        "patron_in_mag11",
        "patron_in_mag12",
        "patron_in_mag13",
        "patron_in_mag14",
        "patron_in_mag15",
        "patron_in_mag16",
        "patron_in_mag17",
        "patron_in_mag18",
        "patron_in_mag19",
        "patron_in_mag20",
        "patron_in_mag21",
        "patron_in_mag22",
        "patron_in_mag23",
        "patron_in_mag24",
        "patron_in_mag25",
        "patron_in_mag26",
        "patron_in_mag27",
        "patron_in_mag28",
        "patron_in_mag29",
        "patron_in_mag30",
        "patron_in_mag31",
        "patron_in_mag32",
        "patron_in_mag33",
        "patron_in_mag34",
        "patron_in_mag35",
        "patron_in_mag36",
        "patron_in_mag37",
        "patron_in_mag38",
        "patron_in_mag39",
        "patron_in_mag40",
        "patron_in_mag41",
        "patron_in_mag42",
        "patron_in_mag43",
        "patron_in_mag44",
        "patron_in_mag45",
        "patron_in_mag46",
        "patron_in_mag47",
        "patron_in_mag48",
        "patron_in_mag49",
        "patron_in_mag50",
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1.5,
    weight = 0.45,
    malfunctionChance = 0.05,
}))


-- EFT ID: 5cc70093e4a949033c734312
ARC9.LoadAttachment(ATT, "eft_p90_mag_std")

///////////////////////////////////////      eft_p90_mag_opaque


ATT = {}

ATT.PrintName = "FN P90 5.7x28 50-round magazine (Non trasparent)"
ATT.CompactName = "P90 orig."
ATT.Icon = Material("entities/eft_p90_attachments/mag.png", "mips smooth")
ATT.Description = [[A 50-round polymer magazine for the 5.7x28mm FN P90 SMG.

original nontransparent version like in tarkov]]

ATT.SortOrder = 2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -5

ATT.ChamberSize = 1
ATT.ClipSize = 50
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 

ATT.Category = {"eft_p90_mag"}
ATT.ActivateElements = {"p90_50rnd"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1.5,
    weight = 0.45,
    malfunctionChance = 0.05,
}))


-- EFT ID: 5cc70093e4a949033c734312
ARC9.LoadAttachment(ATT, "eft_p90_mag_opaque")


///////////////////////////////////////      eft_p90_muzzle_std


ATT = {}

ATT.PrintName = "FN P90 5.7x28 flash hider"
ATT.CompactName = "P90"
ATT.Icon = Material("entities/eft_p90_attachments/muzzle.png", "mips smooth")
ATT.Description = [[A regular flash hider for the P90 SMG. Manufactured by Fabrique Nationale Herstal.]]

ATT.VisualRecoilMult = 0.93
ATT.RecoilMult = 0.93
ATT.EFTErgoAdd = -1
ATT.HeatCapacityMult = 1.01
ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_muzzle"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.5,
    recoilModifier = -5,
    weight = 0.1,
}))


-- EFT ID: 5cc82796e24e8d000f5859a8
ARC9.LoadAttachment(ATT, "eft_p90_muzzle_std")


///////////////////////////////////////      eft_p90_rec_siderail


ATT = {}

ATT.PrintName = "FN P90 upper receiver side rail"
ATT.CompactName = "P90 side"
ATT.Icon = Material("entities/eft_p90_attachments/mount_side.png", "mips smooth")
ATT.Description = [[A side rail for the standard-issue FN P90 receiver, allows installation of additional tactical equipment.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/p90_side_rail.mdl"

ATT.Category = {"eft_p90_std_side_mount"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical"),
        Category = {"eft_tactical_top", "eft_tactical"},
        Pos = Vector(-0.05, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.2),
    },
}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -0.1,
    weight = 0.07,
}))


-- EFT ID: 5cc70146e4a949000d73bf6b
ARC9.LoadAttachment(ATT, "eft_p90_rec_siderail")


///////////////////////////////////////      eft_p90_rec_std


ATT = {}

ATT.PrintName = "FN P90 5.7x28 upper receiver"
ATT.CompactName = "P90"
ATT.Icon = Material("entities/eft_p90_attachments/top.png", "mips smooth")
ATT.Description = [[A regular upper receiver for the P90 submachine gun, manufactured by Fabrique Nationale Herstal.]]

ATT.EFTErgoAdd = -5
ATT.HeatCapacityMult = 1.05
ATT.HeatDissipationMult = 1.052

ATT.HasReceiver = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = "eft_p90_rec_mount",
        Pos = Vector(0, 1.8, -1.07),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_p90_std_side_mount"},
        Pos = Vector(1.07, -1, -1.07),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(-0.5, 0, -0.5),
        -- ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_p90_std_side_mount"},
        Pos = Vector(-1.07, -1, -1.07),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(-0.5, 0, -0.5),
        -- ExtraSightDistance = 8
    },
}

ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -5,
    weight = 0.31,
}))


-- EFT ID: 5cc70102e4a949035e43ba74
ARC9.LoadAttachment(ATT, "eft_p90_rec_std")


///////////////////////////////////////      eft_p90_rec_toprail


ATT = {}

ATT.PrintName = "FN P90 upper receiver top rail"
ATT.CompactName = "P90 top"
ATT.Icon = Material("entities/eft_p90_attachments/top_rail.png", "mips smooth")
ATT.Description = [[The FN top rail allows installation of additional equipment on the FN P90 standard upper receivers.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1

ATT.Category = {"eft_p90_rec_mount"}


ATT.Sights = {
    {
        Pos = Vector(14, 0, -0.9),
        Ang = Angle(0, -90-0.05, 0),

        -- Pos = Vector(0, -5, -2.3),
        -- Ang = Angle(0, -0.09, 0),
        Magnification = 1.25,
        ViewModelFOV = 57,
        IsIronSight = true
    }
}

ATT.ModelAngleOffset = Angle(0, -90, 0)
ATT.ModelOffset = Vector(-18.75, 0, -1.38)

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Category = {"eft_optic_medium", "eft_optic_small", "eft_tactical_top", "eft_optic_large"},
        -- Pos = Vector(0, 16.5, -2.61),
        Pos = Vector(0, 16.5-18.75, -1.23),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 1, 0),
        -- ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Category = "eft_rearsight",
        Pos = Vector(0, 13.7-18.75, -1.23),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 1, 0),
        -- ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Category = "eft_frontsight",
        Pos = Vector(0, 19.3-18.75, -1.23),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 1, 0),
        -- ExtraSightDistance = 8
    },
}

ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.27,
}))


-- EFT ID: 5cc7015ae4a949001152b4c6
ARC9.LoadAttachment(ATT, "eft_p90_rec_toprail")


///////////////////////////////////////      eft_p90_scope


ATT = {}

ATT.PrintName = "FN P90 Ring Sight reflex sight"
ATT.CompactName = "P90 Ring"
ATT.Icon = Material("entities/eft_p90_attachments/ringscope.png", "mips smooth")
ATT.Description = [[Ring Sight is a reflex sight for the P90 SMG, manufactured by Fabrique Nationale Herstal.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1

ATT.Category = {"eft_p90_rec_mount"}

ATT.Scale = 1
ATT.Model = "models/weapons/arc9/darsu_eft/mods/scope_p90.mdl"

ATT.FoldSights = true

ATT.Sights = {
    {
        -- Pos = Vector(-5, 0, -2.5),
        Pos = Vector(0, -5, -2.52),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 57
    }
}

ATT.HoloSight = true
-- ATT.HoloSightReticle = Material("entities/eft_p90_attachments/scope_p90_fn_ring_sight_std_LOD0_marks2.png", "smooth")
ATT.HoloSightReticle = Material("vgui/arc9_eft_shared/reticles/new/scope_p90_fn_ring_sight_std_LOD0_marks5.png", "smooth")
ATT.HoloSightReticle:SetInt("$flags", bit.bor(ATT.HoloSightReticle:GetInt("$flags"), 128)) -- additive
ATT.HoloSightReticle:SetVector("$color2", Vector(2, 2, 2)) -- bright color
ATT.HoloSightSize = 240
ATT.HoloSightColorable = false

ATT.ModelAngleOffset = Angle(0, -90, 0)
ATT.ModelOffset = Vector(-18.75, 0, -1.38)

ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.297,
}))


-- EFT ID: 5cebec38d7f00c00110a652a
ARC9.LoadAttachment(ATT, "eft_p90_scope")


///////////////////////////////////////      eft_p90_silencer


ATT = {}

ATT.PrintName = "FN Attenuator 5.7x28 sound suppressor"
ATT.CompactName = "Attenuator"
ATT.Icon = Material("entities/eft_p90_attachments/silencer.png", "mips smooth")
ATT.Description = [[Attenuator is a 5.7x28 mm sound suppressor manufactured by Fabrique Nationale Herstal.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.VisualRecoilMult = 0.91
ATT.RecoilMult = 0.91
ATT.HeatCapacityMult = 0.87
ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.EFTErgoAdd = -17

ATT.Silencer = true 
-- ATT.CustomizePos = Vector(14.5, 30, 4)

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5

ATT.Category = {"eft_p90_silencerr"}


table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -10,
    recoilModifier = -2,
    weight = 0.677,
    velocity = 0.7,
}))


-- EFT ID: 5cebec00d7f00c065c53522a
ARC9.LoadAttachment(ATT, "eft_p90_silencer")


///////////////////////////////////////      eft_p90_stock_std


ATT = {}

ATT.PrintName = "FN P90 stock"
ATT.CompactName = "P90"
ATT.Icon = Material("entities/eft_p90_attachments/stock.png", "mips smooth")
ATT.Description = [[A standard-issue polymer stock for the P90 SMG, manufactured by Fabrique Nationale Herstal.]]

ATT.VisualRecoilMult = 0.91
ATT.RecoilMult = 0.91
ATT.EFTErgoAdd = 26

ATT.HasStock = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_stock"}

ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 26.5,
    recoilModifier = -5,
    weight = 0.4,
}))


-- EFT ID: 5cc700b9e4a949000f0f0f25
ARC9.LoadAttachment(ATT, "eft_p90_stock_std")



///////////////////////////////////////      eft_ps90_stock


ATT = {}

ATT.PrintName = "FN PS90 stock"
ATT.CompactName = "PS90"
ATT.Icon = Material("entities/eft_p90_attachments/stock_ps.png", "mips smooth")
ATT.Description = [[A polymer stock for the civilian PS90 SMG variant. Manufactured by Fabrique Nationale Herstal.]]

ATT.VisualRecoilMult = 0.91
ATT.RecoilMult = 0.91
ATT.EFTErgoAdd = 26

ATT.HasStock = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_stock"}


ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 26.5,
    recoilModifier = -5,
    weight = 0.4,
}))


-- EFT ID: 5cebec10d7f00c065703d185
ARC9.LoadAttachment(ATT, "eft_ps90_stock")




///////////////////////////////////////      eft_ps90_rec


ATT = {}

ATT.PrintName = "FN PS90 5.7x28 upper receiver"
ATT.CompactName = "PS90"
ATT.Icon = Material("entities/eft_p90_attachments/top_ps.png", "mips smooth")
ATT.Description = [[A regular upper receiver for the PS90, produced by Fabrique Nationale Herstal.]]

ATT.EFTErgoAdd = -5
ATT.HeatCapacityMult = 1.05
ATT.HeatDissipationMult = 1.052

ATT.HasReceiver = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_p90_rec"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount"),
        Category = "eft_p90_rec_mount",
        Pos = Vector(0, 1.8, -1.07),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_p90_std_side_mount"},
        Pos = Vector(1.07, -1, -1.07),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(-0.5, 0, -0.5),
        -- ExtraSightDistance = 8
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_p90_std_side_mount"},
        Pos = Vector(-1.07, -1, -1.07),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(-0.5, 0, -0.5),
        -- ExtraSightDistance = 8
    },
}

ATT.AdvancedCamoSupport = true

table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -5,
    weight = 0.31,
}))


-- EFT ID: 5cf7acfcd7f00c1084477cf2
ARC9.LoadAttachment(ATT, "eft_ps90_rec")











-- post 1.0


///////////////////////////////////////      eft_p90_smc90_stock

ATT = {}

ATT.PrintName = "FN P90 Strike Industries SMC-90 buttstock"
ATT.CompactName = "SMC-90"
ATT.Icon = Material("entities/eft_attachments/6a6877f566f77e6757083db5.png", "mips smooth")
ATT.Description = "An ergonomic buttstock from the Strike Industries SMC-90 chassis kit for the FN P90 submachine gun."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_p90_stock"}

ATT.HasStock = true 

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = {"eft_smc90_cheek"},
        Pos = Vector(0, -5, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small", "eft_smc90_hg"},
        Pos = Vector(0, 12.5, 0.45),
        Ang = Angle(0, -90, 0),
    },
}

ATT.AdvancedCamoSupport = true
table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 14,
    recoilModifier = -6.5,
    weight = 0.762,
}))


-- EFT ID: 6a6877f566f77e6757083db5
ARC9.LoadAttachment(ATT, "eft_p90_smc90_stock")

///////////////////////////////////////      eft_p90_smc90_cheek

ATT = {}

ATT.PrintName = "FN P90 Strike Industries SMC-90 cheek rest"
ATT.CompactName = "SMC90"
ATT.Icon = Material("entities/eft_attachments/6a69d239d038171e800696b0.png", "mips smooth")
ATT.Description = "A buttstock cheek rest from the SMC-90 chassis for FN P90 submachine gun. Manufactured by Strike Industries."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_smc90_cheek"}
table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 2,
    weight = 0.062,
}))


-- EFT ID: 6a69d239d038171e800696b0
ARC9.LoadAttachment(ATT, "eft_p90_smc90_cheek")

///////////////////////////////////////      eft_p90_smc90_hg_long

ATT = {}

ATT.PrintName = "FN P90 Strike Industries SMC-90 Long M-LOK handguard"
ATT.CompactName = "SMC90 long"
ATT.Icon = Material("entities/eft_attachments/6a687e38e1ad1bac01015418.png", "mips smooth")
ATT.Description = "The Strike Industries Long handguard for SMC-90 chassis equipped with an M-LOK interface for installation of additional devices and accessories."

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_smc90_hg"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/p90hg_lhik.mdl"
ATT.ModelOffset = Vector(0, -0.5, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 
ATT.HeatCapacityMult = 0.976

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        -- Category = {"eft_foregrip_small"},
        Category = {"eft_foregrip_small", "eft_foregrip_large"},
        Pos = Vector(-0.3, 0, 0.75),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_u"),
        Category = {"eft_tactical_top"},
        Pos = Vector(-3.0, 0, -3.25),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti"},
        Pos = Vector(-3.5, 1.2, -1.75),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti"},
        Pos = Vector(-3.5, -1.2, -1.75),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_b"),
        Category = {"eft_tactical", "eft_tactical_top"},
        ExcludeElements = {"eft_foregrip_cqr"},
        Pos = Vector(-5.2, 0, 0.75),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ATT.AdvancedCamoSupport = true
table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 17,
    weight = 0.338,
}))


-- EFT ID: 6a687e38e1ad1bac01015418
ARC9.LoadAttachment(ATT, "eft_p90_smc90_hg_long")

///////////////////////////////////////      eft_p90_smc90_hg_short

ATT = {}

ATT.PrintName = "FN P90 Strike Industries SMC-90 Short M-LOK handguard"
ATT.CompactName = "SMC90 short"
ATT.Icon = Material("entities/eft_attachments/6a688026daa5d47171082d6b.png", "mips smooth")
ATT.Description = "The Strike Industries Short handguard for SMC-90 chassis equipped with an M-LOK interface for installation of additional devices and accessories."

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_smc90_hg"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/p90hg_lhik.mdl"
ATT.ModelOffset = Vector(0, -1.5, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 
ATT.HeatCapacityMult = 0.976


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small"},
        Pos = Vector(-0.3, 0, 0.75),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_u"),
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-1.85, 0, -3.25),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_r"),
        Category = {"eft_mount_mlok_micro"},
        Pos = Vector(-1.2, 1.2, -1.75),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_mount_l"),
        Category = {"eft_mount_mlok_micro"},
        Pos = Vector(-1.2, -1.2, -1.75),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.AdvancedCamoSupport = true
table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = 10,
    weight = 0.204,
}))


-- EFT ID: 6a688026daa5d47171082d6b
ARC9.LoadAttachment(ATT, "eft_p90_smc90_hg_short")

///////////////////////////////////////      eft_p90_adapter

ATT = {}

ATT.PrintName = "FN P90 CMMG 5.56x45 muzzle device adapter"
ATT.CompactName = "P90 5.56"
ATT.Icon = Material("entities/eft_attachments/6a68a56b0c3b4e47d502bede.png", "mips smooth")
ATT.Description = "The CMMG adapter allows to install different AR-15 specific muzzle devices on the FN P90 submachine gun."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_p90_muzzle"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_muzzle"),
        Category = "eft_ar15_muzzle",
        Pos = Vector(0, 0.65, 0.15),
        Ang = Angle(0, -90, 0),
    },
}
table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    ergonomicsModifier = -1,
    weight = 0.05,
}))


-- EFT ID: 6a68a56b0c3b4e47d502bede
ARC9.LoadAttachment(ATT, "eft_p90_adapter")

///////////////////////////////////////      eft_optic_seeker

ATT = {}

ATT.PrintName = "Strike Industries Hexion Tech Seeker reflex sight"
ATT.CompactName = "Seeker"
ATT.Icon = Material("entities/eft_attachments/6a675e25dfb2de5e320d454e.png", "mips smooth")
ATT.Description = "A compact reflex sight that can be used as either a primary or backup optic. Requires a compatible mount for installation on Weaver rails. Manufactured by Strike Industries."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_rmr"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/scope_seeker.mdl"
ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.62),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 53
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/arc9_eft_shared/reticles/new/scope_base_trijicon_rmr_mark.png", "smooth")
ATT.HoloSightReticle:SetInt("$flags", bit.bor(ATT.HoloSightReticle:GetInt("$flags"), 128)) -- additive
ATT.HoloSightReticle:SetVector("$color2", Vector(10, 0.8, 0.5)) -- bright color
ATT.HoloSightSize = 450
ATT.HoloSightColorable = false

ATT.AdvancedCamoSupport = true
table.Merge(ATT, ARC9EFT.GenerateEFTAttachment({
    weight = 0.04,
}))


-- EFT ID: 6a675e25dfb2de5e320d454e
ARC9.LoadAttachment(ATT, "eft_optic_seeker")