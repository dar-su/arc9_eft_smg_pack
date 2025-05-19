
--copy of arc9_eft_mp5 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_mp5"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_mp5k")
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_mp5k.mdl"

SWEP.Description = ARC9:GetPhrase("eft_weapon_mp5k_desc")

SWEP.StandardPresets = false 

SWEP.RPM = 900
SWEP.EFTErgo = 55
SWEP.RecoilAutoControl = 7.0 -- autocompenstaion, could be cool if set to high but it also affects main recoil

SWEP.CustomizePos = Vector(15, 30, 5)

SWEP.DefaultElements = {"eft_k"} -- owo

SWEP.Attachments = {
    {
        Category = "eft_mp5k_rec",
        Installed = "eft_mp5_rec_k",
        SubAttachments = {
            {},
            {
                Installed = "eft_mp5_rs_std"
            },
            {
                Installed = "eft_mp5_stock_capk"
            },
            {
                Installed = "eft_mp5_hg_k"
            },
            {
                Installed = nil
            }
        }
    },
    {
        Category = "eft_mp5k_charge",
        Installed = "eft_mp5_charge_k",
    },
    _,
    {
        Installed = "eft_mp5_mag_20",
    },
}

SWEP.HookP_NameChange = function(self, name) end
