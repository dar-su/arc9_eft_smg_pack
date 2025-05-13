local ATT = {}

///////////////////////////////////////      eft_uzi_barrel_238

ATT = {}

ATT.PrintName = "UZI 238mm threaded 3-lug barrel"
ATT.CompactName = "UZI 238mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_238mm_threaded_3lug_barrel.png", "mips smooth")
ATT.Description = "A threaded 238mm barrel for the UZI submachine gun, equipped with a 3-lug type adapter for installing muzzle devices."

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.02
ATT.PhysBulletMuzzleVelocityMult = 0.99

ATT.Spread = 4.74 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 238
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzi_3lug"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        -- Category = {}, -- what a weird set of slots bruh
        Category = {"eft_muzzle_uzi", "eft_9mm_muzzle","eft_mp5_muzzle_second", "eft_taccom", "eft_vector9_muzzle"},
        Pos = Vector(-4.6, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_uzi_barrel_238")

///////////////////////////////////////      eft_uzi_barrel_259

ATT = {}

ATT.PrintName = "UZI 9x19 259mm barrel"
ATT.CompactName = "UZI 259mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_259mm_barrel.png", "mips smooth")
ATT.Description = "A 259mm barrel for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.98

ATT.Spread = 4.4 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 259
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzi", "eft_sup_uzi"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_uzi_barrel_259")

///////////////////////////////////////      eft_uzi_barrel_409

ATT = {}

ATT.PrintName = "UZI 9x19 409mm barrel"
ATT.CompactName = "UZI 409mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_409mm_barrel.png", "mips smooth")
ATT.Description = "A 409mm barrel for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.HeatCapacityMult = 0.92
ATT.PhysBulletMuzzleVelocityMult = 1.06

ATT.Spread = 1.72 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 409
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzi"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.MuzzleEffectQCA = 5

ARC9.LoadAttachment(ATT, "eft_uzi_barrel_409")

///////////////////////////////////////      eft_uzipro_barrel_114pike

ATT = {}

ATT.PrintName = "UZI PRO 9x19 Pike Arms 114mm threaded barrel"
ATT.CompactName = "PA 114mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_pike_arms_114mm_threaded_barrel.png", "mips smooth")
ATT.Description = "A threaded 114mm barrel for the UZI PRO. Manufactured by Pike Arms."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.HeatCapacityMult = 1.058
ATT.PhysBulletMuzzleVelocityMult = 0.9675

ATT.Spread = 7.56 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 113
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_barrel"}
ATT.ExcludeElements = {"eft_uzipro_hgrail"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzipro"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        -- Category = {}, -- what a weird set of slots bruh
        Category = {"eft_muzzle_uzipro", "eft_9mm_muzzle", "eft_taccom", "eft_vector9_muzzle"},
        Pos = Vector(-4.02, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_uzipro_barrel_114pike")

///////////////////////////////////////      eft_uzipro_barrel_114

ATT = {}

ATT.PrintName = "UZI PRO 9x19 114mm barrel"
ATT.CompactName = "UZI 114mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_114mm_barrel.png", "mips smooth")
ATT.Description = "A 114mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.HeatCapacityMult = 1.065
ATT.PhysBulletMuzzleVelocityMult = 0.969

ATT.Spread = 7.73 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 114
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzipro"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzipro_barrel_114")

///////////////////////////////////////      eft_uzipro_barrel_170

ATT = {}

ATT.PrintName = "UZI PRO 9x19 170mm barrel"
ATT.CompactName = "UZI 170mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_170mm_barrel.png", "mips smooth")
ATT.Description = "A 170mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.042
ATT.PhysBulletMuzzleVelocityMult = 0.9752

ATT.Spread = 6.26 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 170
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzipro"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.MuzzleEffectQCA = 5

ARC9.LoadAttachment(ATT, "eft_uzipro_barrel_170")

///////////////////////////////////////      eft_uzipro_barrel_210

ATT = {}

ATT.PrintName = "UZI PRO 9x19 210mm barrel"
ATT.CompactName = "UZI 210mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_210mm_barrel.png", "mips smooth")
ATT.Description = "A 210mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -2.5
ATT.CustomCons = { Ergonomics = "-2.5" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 1.026
ATT.PhysBulletMuzzleVelocityMult = 0.9806

ATT.Spread = 5.02 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 210
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzipro"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.MuzzleEffectQCA = 6
ARC9.LoadAttachment(ATT, "eft_uzipro_barrel_210")

///////////////////////////////////////      eft_uzipro_barrel_240

ATT = {}

ATT.PrintName = "UZI PRO 9x19 240mm barrel"
ATT.CompactName = "UZI 240mm"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_240mm_barrel.png", "mips smooth")
ATT.Description = "A 240mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.HeatCapacityMult = 0.988
ATT.PhysBulletMuzzleVelocityMult = 0.9823

ATT.Spread = 4.64 * ARC9.MOAToAcc

ATT.HasBarrel = true 

ATT.SortOrder = 240
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_barrel"}


ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_nut_uzipro"},
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.MuzzleEffectQCA = 6
ARC9.LoadAttachment(ATT, "eft_uzipro_barrel_240")

///////////////////////////////////////      eft_uzi_muzzle_3thr

ATT = {}

ATT.PrintName = "UZI 9x19 3-lug barrel thread protector"
ATT.CompactName = "UZI 3-lug thr."
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_3lug_barrel_thread_protector.png", "mips smooth")
ATT.Description = "A thread protector for UZI submachine gun 3-lug barrels. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

-- ATT.BarrelLengthAdd = 1.5

ATT.Category = {"eft_muzzle_uzi"}

ARC9.LoadAttachment(ATT, "eft_uzi_muzzle_3thr")

///////////////////////////////////////      eft_uzi_muzzle_shroud

ATT = {}

ATT.PrintName = "UZI vented barrel shroud"
ATT.CompactName = "UZI shroud"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_vented_barrel_shroud.png", "mips smooth")
ATT.Description = "A vented barrel shroud for the UZI submachine gun, which allows to reduce barrel heat when firing in bursts. Manufactured by Israel Weapon Industries."      

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 0.948

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true 
-- ATT.BarrelLengthAdd = 1.5

ATT.Category = {"eft_nut_uzi"}

ARC9.LoadAttachment(ATT, "eft_uzi_muzzle_shroud")

///////////////////////////////////////      eft_uzi_muzzle_3nut

ATT = {}

ATT.PrintName = "UZI 9x19 3-lug barrel retaining nut"
ATT.CompactName = "3-lug nut"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_3lug_barrel_retaining_nut.png", "mips smooth")
ATT.Description = "A special 3-lug nut required to install 9x19 barrels on the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true 
-- ATT.BarrelLengthAdd = 1.5

ATT.Category = {"eft_nut_uzi", "eft_nut_uzi_3lug"}

ARC9.LoadAttachment(ATT, "eft_uzi_muzzle_3nut")

///////////////////////////////////////      eft_uzi_muzzle_nut

ATT = {}

ATT.PrintName = "UZI 9x19 barrel retaining nut"
ATT.CompactName = "UZI nut"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_barrel_retaining_nut.png", "mips smooth")
ATT.Description = "A special nut required to install 9x19 barrels on the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true 
-- ATT.BarrelLengthAdd = 1.5

ATT.Category = {"eft_nut_uzi"}

ARC9.LoadAttachment(ATT, "eft_uzi_muzzle_nut")

///////////////////////////////////////      eft_uzi_muzzle_sup

ATT = {}

ATT.PrintName = "UZI 9x19 sound suppressor"
ATT.CompactName = "UZI sup."
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_sound_suppressor.png", "mips smooth")
ATT.Description = "A standard-issue sound suppressor for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -16
ATT.CustomCons = { Ergonomics = "-16" }
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.HeatCapacityMult = 1.125
ATT.PhysBulletMuzzleVelocityMult = 1.008

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true 
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ATT.Silencer = true

ATT.Category = {"eft_sup_uzi"}

ATT.MuzzleEffectQCA = 5

ARC9.LoadAttachment(ATT, "eft_uzi_muzzle_sup")

///////////////////////////////////////      eft_uzipro_muzzle_nut

ATT = {}

ATT.PrintName = "UZI PRO 9x19 barrel retaining nut"
ATT.CompactName = "UZI PRO nut"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_barrel_retaining_nut.png", "mips smooth")
ATT.Description = "A special nut required to install 9x19 barrels on UZI PRO. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true 
-- ATT.BarrelLengthAdd = 1.5

ATT.Category = {"eft_nut_uzipro"}

ARC9.LoadAttachment(ATT, "eft_uzipro_muzzle_nut")

///////////////////////////////////////      eft_uzipro_muzzle_masada

ATT = {}

ATT.PrintName = "UZI PRO 9x19 Masada thread protector"
ATT.CompactName = "Masada thr."
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_masada_thread_protector.png", "mips smooth")
ATT.Description = "The Masada thread protector for UZI PRO submachine gun barrels. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

-- ATT.BarrelLengthAdd = 1.5

ATT.Category = {"eft_muzzle_uzipro"}

ARC9.LoadAttachment(ATT, "eft_uzipro_muzzle_masada")

///////////////////////////////////////      eft_uzi_stock_t3

ATT = {}

ATT.PrintName = "UZI Type 3 buttstock"
ATT.CompactName = "UZI Type 3"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_type_3_buttstock.png", "mips smooth")
ATT.Description = "A wooden buttstock for the UZI submachine gun. A relic from the 60s, still smells like preservation grease. Manufactured by Israel Weapon Industries."       

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.77
ATT.VisualRecoilMult = 0.77

ATT.HasStock = true

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_stock"}

ARC9.LoadAttachment(ATT, "eft_uzi_stock_t3")

///////////////////////////////////////      eft_uzi_stock_t5

ATT = {}

ATT.PrintName = "UZI Type 5 buttstock"
ATT.CompactName = "UZI Type 5"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_type_5_buttstock.png", "mips smooth")
ATT.Description = [[A foldable buttstock for the UZI submachine gun. The most famous variant which has been involved in countless operations, from localized skirmishes on the southern continent, to protecting presidents during assassination attempts. Manufactured by Israel Weapon Industries.
Slap it HARDER, I know you want it!]]

ATT.EFTErgoAdd = 5
-- ATT.CustomPros = { Ergonomics = "+5" }
-- ATT.RecoilMult = 0.79
-- ATT.VisualRecoilMult = 0.79


ATT.CustomPros = { Ergonomics = "+5", ["Recoil while extended"] = "-21%" }

ATT.ToggleStats = {
    {
        PrintName = "Extended",
        RecoilMult = 0.79,
        VisualRecoilMult = 0.79,
        ActivateElements = {"eft_uzi_stock_t5_unfolded"},
        HasStock = true
    },
    {
        PrintName = "Collapsed",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_uzi_stock_t5_folded"}
    },
}

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_stock"}

ARC9.LoadAttachment(ATT, "eft_uzi_stock_t5")

///////////////////////////////////////      eft_uzi_stock_t6

ATT = {}

ATT.PrintName = "UZI Type 6 buttstock"
ATT.CompactName = "UZI Type 6"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_type_6_buttstock.png", "mips smooth")
ATT.Description = "A wire buttstock for the UZI submachine gun. Thats right, its just like those gangsters from the 80s. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 7
-- ATT.CustomPros = { Ergonomics = "+7" }
-- ATT.RecoilMult = 0.8
-- ATT.VisualRecoilMult = 0.8


ATT.CustomPros = { Ergonomics = "+7", ["Recoil while extended"] = "-20%" }

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.8,
        VisualRecoilMult = 0.8,
        ActivateElements = {"eft_uzi_stock_t6_unfolded"},
        HasStock = true
    },
    {
        PrintName = "Folded",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_uzi_stock_t6_folded"}
    },
}

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_stock"}

ARC9.LoadAttachment(ATT, "eft_uzi_stock_t6")

///////////////////////////////////////      eft_uzi_stock_t7

ATT = {}

ATT.PrintName = "UZI Type 7 buttstock"
ATT.CompactName = "UZI Type 7"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_type_7_buttstock.png", "mips smooth")
ATT.Description = "A polymer buttstock for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.RecoilMult = 0.77
ATT.VisualRecoilMult = 0.77

ATT.HasStock = true


ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_stock"}

ARC9.LoadAttachment(ATT, "eft_uzi_stock_t7")

///////////////////////////////////////      eft_uzi_stock_wekz

ATT = {}

ATT.PrintName = "UZI StormWerkz stock adapter"
ATT.CompactName = "UZI adap."
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_stormwerkz_stock_adapter.png", "mips smooth")
ATT.Description = "A Picatinny adapter designed for installation of various buttstocks on the UZI submachine gun. Manufactured by StormWerkz."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }


ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_stock"}

ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = {"eft_mcx_stock"},
        Pos = Vector(0.69, 0, -0.15),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzi_stock_wekz")

///////////////////////////////////////      eft_uzipro_stock_csm

ATT = {}

ATT.PrintName = "UZI PRO CSM stock adapter"
ATT.CompactName = "UZI CSM"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_csm_stock_adapter.png", "mips smooth")
ATT.Description = "A Picatinny adapter designed for installation of various buttstocks on the UZI PRO submachine gun. Manufactured by Custom Smith Manufacturing."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }


ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_stock"}

ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = {"eft_mcx_stock"},
        Pos = Vector(1.0, 0, 0.05),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzipro_stock_csm")

///////////////////////////////////////      eft_uzipro_stock_a3

ATT = {}

ATT.PrintName = "UZI PRO A3 Tactical Rear Stock Adapter"
ATT.CompactName = "A3 RSA"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_a3_tactical_rear_stock_adapter.png", "mips smooth")
ATT.Description = "A Picatinny adapter designed for installation of various buttstocks on the UZI PRO submachine gun. Manufactured by A3 Tactical."


ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_stock"}

ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = {"eft_mcx_stock"},
        Pos = Vector(0.69, 0, 0.175),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzipro_stock_a3")

///////////////////////////////////////      eft_uzipro_stock_brace

ATT = {}

ATT.PrintName = "UZI PRO Stabilizing Brace"
ATT.CompactName = "UZI PRO brace"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_stabilizing_brace.png", "mips smooth")
ATT.Description = "A foldable pistol brace for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 6
-- ATT.CustomPros = { Ergonomics = "+6" }
-- ATT.RecoilMult = 0.87
-- ATT.VisualRecoilMult = 0.87


ATT.CustomPros = { Ergonomics = "+6", ["Recoil while extended"] = "-13%" }

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.87,
        VisualRecoilMult = 0.87,
        ActivateElements = {"eft_uzipro_stock_brace_unfolded"},
        HasStock = true
    },
    {
        PrintName = "Folded",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_uzipro_stock_brace_folded"}
    },
}

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_stock"}

ARC9.LoadAttachment(ATT, "eft_uzipro_stock_brace")

///////////////////////////////////////      eft_uzipro_stock_sbr

ATT = {}

ATT.PrintName = "UZI PRO SBR buttstock"
ATT.CompactName = "UZI PRO SBR"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_sbr_buttstock.png", "mips smooth")
ATT.Description = "A foldable buttstock for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 8
-- ATT.CustomPros = { Ergonomics = "+8" }
-- ATT.RecoilMult = 0.85
-- ATT.VisualRecoilMult = 0.85


ATT.CustomPros = { Ergonomics = "+8", ["Recoil while extended"] = "-15%" }

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.85,
        VisualRecoilMult = 0.85,
        ActivateElements = {"eft_uzipro_stock_sbr_unfolded"},
        HasStock = true
    },
    {
        PrintName = "Folded",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_uzipro_stock_sbr_folded"}
    },
}

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_stock"}

ARC9.LoadAttachment(ATT, "eft_uzipro_stock_sbr")

///////////////////////////////////////      eft_uzipro_stock_a3brace

ATT = {}

ATT.PrintName = "UZI PRO A3 Tactical Modular Folding Brace"
ATT.CompactName = "UZI A3 brace"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_a3_tactical_modular_folding_brace.png", "mips smooth")
ATT.Description = "A foldable pistol brace for the UZI PRO submachine gun. Manufactured by A3 Tactical."

ATT.EFTErgoAdd = 14
-- ATT.CustomPros = { Ergonomics = "+14" }
-- ATT.RecoilMult = 0.88
-- ATT.VisualRecoilMult = 0.88

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_uzi_pro_a3_tactical_modular_folding_brace.mdl"

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.88,
        VisualRecoilMult = 0.88,
        HasStock = true
    },
    {
        PrintName = "Folded",
        EFTFoldStock = true
    },
}

ATT.DrawFunc = function(swep, model)
    model:SetBodygroup(0, swep:GetValue("EFTFoldStock") and 1 or 0)
end

ATT.CustomPros = { Ergonomics = "+14", ["Recoil while extended"] = "-12%" }


ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mcx_stock"} -- wow

ARC9.LoadAttachment(ATT, "eft_uzipro_stock_a3brace")

///////////////////////////////////////      eft_uzipro_stock_backplate

ATT = {}

ATT.PrintName = "UZI PRO backplate"
ATT.CompactName = "UZI PRO plate"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_backplate.png", "mips smooth")
ATT.Description = "A standard-issue receiver cover plate for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }


ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_stock"}

ARC9.LoadAttachment(ATT, "eft_uzipro_stock_backplate")


///////////////////////////////////////      eft_uzi_hg_std

ATT = {}

ATT.PrintName = "UZI polymer handguard"
ATT.CompactName = "UZI polymer"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_polymer_handguard.png", "mips smooth")
ATT.Description = "A standard-issue polymer handguard for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.HeatCapacityMult = 1.044

ATT.HasHG = true

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_hg"}

ARC9.LoadAttachment(ATT, "eft_uzi_hg_std")

///////////////////////////////////////      eft_uzi_hg_fg

ATT = {}

ATT.PrintName = "UZI handguard with foregrip"
ATT.CompactName = "UZI foregrip"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_handguard_with_foregrip.png", "mips smooth")
ATT.Description = "A handguard with a vertical foregrip and side rail slots for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 1.016

ATT.HasHG = true

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_hg"}
ATT.ExcludeElements = {"eft_uzi_hg2_werkz"}

ATT.Attachments = {
    {
        PrintName = "L Rail",
        Category = "eft_uzi_mount_side",
        Pos = Vector(-1.75, -0.92, -0.47),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R Rail",
        Category = "eft_uzi_mount_side",
        Pos = Vector(-1.75, 0.92, -0.47),
        Ang = Angle(180, 180, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_uzi_vertgrip_lhik.mdl"
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 

ARC9.LoadAttachment(ATT, "eft_uzi_hg_fg")

///////////////////////////////////////      eft_uzi_hg_k

ATT = {}

ATT.PrintName = "UZI K-Grip handguard"
ATT.CompactName = "UZI K-Grip"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_kgrip_handguard.png", "mips smooth")
ATT.Description = "A handguard with a foregrip for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 1.031

ATT.HasHG = true

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_hg"}
ATT.ExcludeElements = {"eft_uzi_hg2_werkz"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_uzi_kgrip_lhik.mdl"
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 

ARC9.LoadAttachment(ATT, "eft_uzi_hg_k")

///////////////////////////////////////      eft_uzipro_hg_mlok

ATT = {}

ATT.PrintName = "UZI PRO A3 Tactical M-LOK handguard"
ATT.CompactName = "UZI PRO M-LOK"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_a3_tactical_mlok_handguard.png", "mips smooth")
ATT.Description = "A handguard for the IWI UZI PRO Pistol, which functions as a foregrip and trigger guard. Equipped with M-LOK interface for attaching additional equipment. Manufactured by A3 Tactical."

ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.983

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_hg"}

ATT.Attachments = {
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok_micro"},
        Pos = Vector(-0.7, -0.66, -0.6),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok_micro"},
        Pos = Vector(-0.7, 0.66, -0.6),
        Ang = Angle(180, 180, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_uzi_pro_a3_lhik.mdl"
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.LHIK = true 

ARC9.LoadAttachment(ATT, "eft_uzipro_hg_mlok")

///////////////////////////////////////      eft_uzi_hg2_werkz

ATT = {}

ATT.PrintName = "UZI StormWerkz lower handguard rail"
ATT.CompactName = "UZI rail"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_stormwerkz_lower_handguard_rail.png", "mips smooth")
ATT.Description = "A rail designed for installation on the UZI submachine gun handguard. Manufactured by StormWerkz."

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_hg2"}
ATT.ExcludeElements = {"eft_uzi_hg_k", "eft_uzi_hg_fg"}

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = "eft_tactical_pistol",
        Pos = Vector(0, 0.25, -0.7),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzi_hg2_werkz")

///////////////////////////////////////      eft_uzi_rail_hg

ATT = {}

ATT.PrintName = "UZI handguard rail"
ATT.CompactName = "UZI rail"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_handguard_rail.png", "mips smooth")
ATT.Description = "A handguard rail for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mount_side"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_uzi.mdl"

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = {"eft_tactical", "eft_tactical_top", "eft_tactical_top_big"},
        Pos = Vector(0, -0.4, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzi_rail_hg")

///////////////////////////////////////      eft_uzi_rail_optic

ATT = {}

ATT.PrintName = "UZI StormWerkz Scope Mount"
ATT.CompactName = "UZI Mount"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_stormwerkz_scope_mount.png", "mips smooth")
ATT.Description = "A rail mount for installing various optics on the UZI submachine gun. Manufactured by StormWerkz."

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mount"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large_nosniper", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(-1.5, 0, -0.68),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzi_rail_optic")

///////////////////////////////////////      eft_uzipro_dust

ATT = {}

ATT.PrintName = "UZI PRO dust cover"
ATT.CompactName = "UZI PRO cover"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_dust_cover.png", "mips smooth")
ATT.Description = "A standard dust cover with a top rail for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.HeatCapacityMult = 1.042

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_mount"}

ATT.HasReciever = true

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large_nosniper", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(3, 0, -0.63),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzipro_dust")

///////////////////////////////////////      eft_uzipro_hgrail

ATT = {}

ATT.PrintName = "UZI PRO SMG rail adapter"
ATT.CompactName = "UZI PRO rail"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_smg_rail_adapter.png", "mips smooth")
ATT.Description = "A rail adapter for the UZI PRO SMG submachine gun, allows installation of tactical equipment on the sides of the weapon. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.HeatCapacityMult = 1.032

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzipro_hg2"}
ATT.ExcludeElements = {"eft_uzipro_barrel_114pike"}

ATT.Attachments = {
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(-1.8, -0.95, -0.35),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(-1.8, 0.95, -0.35),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_uzipro_hgrail")

///////////////////////////////////////      eft_uzi_grip_std

ATT = {}

ATT.PrintName = "UZI pistol grip cover"
ATT.CompactName = "UZI grip"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pistol_grip_cover.png", "mips smooth")
ATT.Description = "A standard cover panel for the UZI submachine gun pistol grip. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasGrip = true

ATT.SortOrder = -1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_grip"}

ARC9.LoadAttachment(ATT, "eft_uzi_grip_std")

///////////////////////////////////////      eft_uzi_mag_20

ATT = {}

ATT.PrintName = "UZI 9x19 20-round magazine"
ATT.CompactName = "UZI 20"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_20round_magazine.png", "mips smooth")
ATT.Description = "A 20-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_20.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 20
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 20
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_20")

///////////////////////////////////////      eft_uzi_mag_25

ATT = {}

ATT.PrintName = "UZI 9x19 25-round magazine"
ATT.CompactName = "UZI 25"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_25round_magazine.png", "mips smooth")
ATT.Description = "A 25-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_25.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_25.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 25
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 25
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_25")

///////////////////////////////////////      eft_uzi_mag_32

ATT = {}

ATT.PrintName = "UZI 9x19 32-round magazine"
ATT.CompactName = "UZI 32"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_32round_magazine.png", "mips smooth")
ATT.Description = "A 32-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_32.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_32.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 32
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 32
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_32")

///////////////////////////////////////      eft_uzi_mag_40

ATT = {}

ATT.PrintName = "UZI 9x19 40-round magazine"
ATT.CompactName = "UZI 40"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_40round_magazine.png", "mips smooth")
ATT.Description = "A 40-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_40.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_40.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 40
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 40
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_40")

///////////////////////////////////////      eft_uzi_mag_50

ATT = {}

ATT.PrintName = "UZI 9x19 50-round magazine"
ATT.CompactName = "UZI 50"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_9x19_50round_magazine.png", "mips smooth")
ATT.Description = "A 50-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_50.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_50.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 50
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 50
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_50")

///////////////////////////////////////      eft_uzi_mag_20pro

ATT = {}

ATT.PrintName = "UZI PRO 9x19 20-round magazine"
ATT.CompactName = "UZI PRO 20"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_20round_magazine.png", "mips smooth")
ATT.Description = "A 20-round magazine for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_pro20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_pro20.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 20+100
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag_pro"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 20
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_20pro")

///////////////////////////////////////      eft_uzi_mag_25pro

ATT = {}

ATT.PrintName = "UZI PRO 9x19 25-round magazine"
ATT.CompactName = "UZI PRO 25"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_25round_magazine.png", "mips smooth")
ATT.Description = "A 25-round magazine for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_pro25.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_pro25.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 25+100
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag_pro"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 25
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_25pro")

///////////////////////////////////////      eft_uzi_mag_32pro

ATT = {}

ATT.PrintName = "UZI PRO 9x19 32-round magazine"
ATT.CompactName = "UZI PRO 32"
ATT.Icon = Material("entities/eft_uzi_attachments/uzi_pro_9x19_32round_magazine.png", "mips smooth")
ATT.Description = "A 32-round magazine for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries."

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_pro32.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_pro32.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 32+100
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag_pro"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 32
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_uzi_mag_32pro")


///////////////////////////////////////      eft_uzipro_smg


ATT = {}

ATT.PrintName = "IWI UZI PRO SMG"
ATT.CompactName = "PRO SMG"
ATT.Icon = Material("entities/eft_uzi_attachments/smg.png", "mips smooth")
ATT.Description = [[The UZI PRO SMG is a submachine gun for law enforcement and military use. This ultra-compact submachine gun is an evolution of the full-size UZI submachine gun, ideal for concealed carry and featuring a high rate of fire. Manufactured by Israel Weapon Industries.

Presents as seperate gun in EFT.]]

ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95

ATT.Category = {"eft_uzipro_hg"}

ATT.Attachments = {
    {
        PrintName = "Mount",
        Category = "eft_uzipro_hg2",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_uzipro_smg")


///////////////////////////////////////      eft_uzi_mag_100

ATT = {}

ATT.PrintName = "UZI 9x19 Beta C-Mag 100-round drum magazine"
ATT.CompactName = "UZI C-Mag 100"
ATT.Icon = Material("entities/eft_uzi_attachments/balls.png", "mips smooth")
ATT.Description = "A 100-round double drum magazine for the UZI submachine gun. The magazine modification is equipped with a transparent plastic cover that allows to check the ammo count. Manufactured by Beta Company."

ATT.EFTErgoAdd = -16
ATT.CustomCons = { Ergonomics = "-16" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_uzi_balls.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_uzi_balls_drop.mdl"
ATT.DropMagazineAmount = 1
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.SortOrder = 100
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_uzi_mag"}

ATT.HasMag = true 
-- ATT.SuppressEmptySuffix = false 

ATT.ClipSize = 100
-- ATT.ChamberSize = 1

local bulletbones = {
    [94] = "patron_007",
    [93] = "patron_008",
    [92] = "patron_009",
    [91] = "patron_010",
    
    [82] = "patron_019",
    [81] = "patron_020",
    [80] = "patron_021",
    [79] = "patron_022",

    [69] = "patron_032",

    [57] = "patron_044",
    [56] = "patron_045",
    [55] = "patron_046",
    [54] = "patron_047",
    [53] = "patron_048",
    [52] = "patron_049",
    [51] = "patron_050",
    [50] = "patron_051",
    [49] = "patron_052",
    [48] = "patron_053",
    [47] = "patron_054",
    [46] = "patron_055",
    [45] = "patron_056",
    [44] = "patron_057",
    [43] = "patron_058",
    [42] = "patron_059",
    [41] = "patron_060",
    [40] = "patron_061",
    [39] = "patron_062",
    [38] = "patron_063",
    [37] = "patron_064",
    [36] = "patron_065",
    [35] = "patron_066",
    [34] = "patron_067",
    [33] = "patron_068",
    [32] = "patron_069",
    [31] = "patron_070",
    [30] = "patron_071",
    [29] = "patron_072",
    [28] = "patron_073",
    [27] = "patron_074",
    [26] = "patron_075",
    [25] = "patron_076",
    [24] = "patron_077",
    [23] = "patron_078",
    [22] = "patron_079",
    [21] = "patron_080",
    [20] = "patron_081",
    [19] = "patron_082",
    [18] = "patron_083",
    [17] = "patron_084",
    [16] = "patron_085",
    [15] = "patron_086",
    [14] = "patron_087",
    [13] = "patron_088",
    [12] = "patron_089",
    [11] = "patron_090",
    [10] = "patron_091",
    [9] = "patron_092",
    [8] = "patron_093",
    [7] = "patron_094",
    [6] = "patron_095",
    [5] = "patron_096",
    [4] = "patron_097",
    [3] = "patron_098",
    [2] = "patron_099",
    [1] = "patron_100",
}

local v0 = Vector(0, 0, 0)
local v1 = Vector(1, 1, 1)

ATT.DrawFunc = function(wep, model, wm)
    local clip = wep:GetLoadedRounds()

    local draww = 100 - clip

    for k, v in pairs(bulletbones) do
        local boneid = model:LookupBone(v)
        if k >= draww then
            model:ManipulateBoneScale(boneid, v1)
        else
            model:ManipulateBoneScale(boneid, v0)
        end
    end
end

ARC9.LoadAttachment(ATT, "eft_uzi_mag_100")