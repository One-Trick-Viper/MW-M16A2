AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_t9fasthandling", "VGUI/entities/mg_t9fasthandling", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_ar_t9fasthandling")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_vert_offset"}

SWEP.PrintName = "M16A2"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Assault Rifles"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_longburst.mdl")
SWEP.WorldModel = Model("models/viper/cw/weapons/w_ar_t9fasthandling.mdl")

SWEP.Slot = 2
SWEP.HoldType = "Rifle"

SWEP.Trigger = {
    PressedSound = Sound("wfoly_plr_fasthandling_firefirst"),
    ReleasedSound = Sound("wfoly_plr_fasthandling_disconnector"),
    Time = 0.05
}

SWEP.Primary.Sound = Sound("weap_ar_trlongburst_fire")
SWEP.Primary.Ammo = "Ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 750  
SWEP.CanChamberRound = true  
  
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "mw_fas2_muzzleflash_ar",
    ["MuzzleFlash_Suppressed"] = "mw_fas2_muzzleflash_suppressed",
    ["Ejection"] = "mw_ins2_shell_eject", 
}

SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_AR6.Outside"),
            Reflection = Sound("Reflection_AR.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_AR.Inside"),
            Reflection = Sound("Reflection_AR.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = "Full Auto",
        OnSet = function()
            return "Firemode_Auto"
        end
    }--[[,

    [2] = {
        Name = "Semi Automatic",
        OnSet = function(self)
            self.Primary.Automatic = false
            self.Primary.RPM = 500
            return "Firemode_Semi"
        end
    },]]

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 35,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.2, --accuracy while hip
    Ads = 0.13, --accuracy while aiming
    Increase = 0.06, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.24, --multiply the increase value by this amount while aiming
    Max = 1.3, --the cone size will not go beyond this size
    Decrease = 0.6, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 76676 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {2, 2.5}, --random value between the 2
    Horizontal = {-0.75, 0.75}, --random value between the 2
    Shake = 1.5, --camera shake
    AdsMultiplier = 0.3, --multiply the values by this amount while aiming
    Seed = 56371267 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {31, 13}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 18, --in meters, damage will start dropping off after this range
    EffectiveRange = 30, --in meters, damage scales within this distance
    Range = 180, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.8, --how much damaged is multipled by when leaving a surface.
        MaxCount = 3, --how many times the bullet can penetrate.
        Thickness = 12, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 8
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0, 0, 180),
    Pos = Vector(4,-0.5,-4)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, -4, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(3, 0, -2), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(4, 0, 3), Angles = Angle(10, -20, 0)}
        }
    },

    RecoilMultiplier = 0.45,
    KickMultiplier = 2,
    AimKickMultiplier = 1
}

SWEP.Shell = "mwb_shelleject_762"

DEFINE_BASECLASS(SWEP.Base)

SWEP.bJungleMags = false

function SWEP:SetupDataTables()
    BaseClass.SetupDataTables(self)
    self:CustomNetworkVar("Flag", "JungleMag")
end

function SWEP:ChooseReloadAnim()
    if (self:HasFlag("Reloading")) then
        self:ToggleFlag("JungleMag")
    end

    if (self.bJungleMags) then
        local reloadIndex = self:Clip1() <= 0 && "Reload_Empty_Fast" || "Reload_Fast"
        reloadIndex = reloadIndex..(self:HasFlag("JungleMag") && "_Flip" || "")
        return reloadIndex
    end

    return BaseClass.ChooseReloadAnim(self)
end

function SWEP:PrimaryAttack()
    local bWasReloading = self:HasFlag("Reloading")

    BaseClass.PrimaryAttack(self)

    if (!self:HasFlag("Reloading") && bWasReloading) then
        self:ToggleFlag("JungleMag")
    end
end

function SWEP:CanAim()
    if (self:HasFlag("Reloading") && !self:HasFlag("MagInserted") && self:HasFlag("JungleMag") && self.bJungleMags) then
        return false
    end
    
    return BaseClass.CanAim(self)
end