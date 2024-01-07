AddCSLuaFile()
function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("weap_arfasthandling_fire_plr_sup")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_AR_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_AR_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        } 
    }
    self.ParticleEffects.MuzzleFlash = "mw_fas2_muzzleflash_suppressed"
end

SWEP.Customization = {
    {"att_perk", "att_perk_fmj", "att_perk_ricochet", "att_perk_headshot", "att_perk_fastswap"}, 

    {"att_conversion", "att_t10_vm_p01_ar_coslo723_receiver"},

    {"attachment_vm_ar_t9longburst_stock",
    "attachment_vm_ar_t9longburst_mixstock_02", "attachment_vm_ar_t9longburst_mixstock_01", 
    "att_t10_vm_p01_ar_coslo723_stock", "att_t10_vm_p01_ar_coslo723_stock_mix", "att_t10_vm_p01_ar_coslo723_stock_light",
    "att_t10_vm_p01_ar_coslo723_stock_flinch", "att_t10_vm_p01_ar_coslo723_stock_adsmove"},

    {"attachment_vm_ar_t9longburst_mag", "attachment_vm_ar_t9longburst_mixclip_01",
    "attachment_vm_ar_t9longburst_fastreload_01", 
    "attachment_vm_ar_t9longburst_extclip_01", "attachment_vm_ar_t9longburst_extclip_02",
    "att_t10_vm_p01_ar_coslo723_mag", "att_t10_vm_p01_ar_coslo723_mag_fastreload1",
    "att_t10_vm_p01_ar_coslo723_mag_fastreload2", "att_t10_vm_p01_ar_coslo723_mag_fast20rd",
    "att_t10_vm_p01_ar_coslo723_mag_ext", "att_t10_vm_p01_ar_coslo723_mag_boxmag"},

    {"attachment_vm_ar_t9longburst_barrel",
    "attachment_vm_ar_t9longburst_barrel_heavy", "attachment_vm_ar_t9longburst_barrel_02",
    "att_t10_vm_p01_ar_coslo723_barrel", "att_t10_vm_p01_ar_coslo723_barrel_velocity",
    "att_t10_vm_p01_ar_coslo723_barrel_short_hical1", "att_t10_vm_p01_ar_coslo723_barrel_short_hical2", "att_t10_vm_p01_ar_coslo723_barrel_range",
    "att_t10_vm_p01_ar_coslo723_barrel_mixbar"},

    {"att_muzzle", "att_vm_breacher01", "att_vm_breacher02", "att_vm_compensator01", 
    "att_vm_compensator02", "att_vm_flashhider01", "att_vm_flashhider02", 
    "att_vm_flashhider03", "att_vm_flashhider04", "att_vm_muzzlebrake01",
    "att_vm_muzzlebrake02", "att_vm_muzzlebrake03",
    "att_vm_silencer01", "att_vm_silencer02", "att_vm_silencer03",
    "att_vm_silencer04", "att_vm_silencer05", 'att_vm_silencer06'},

    {"att_sight", "att_vm_2x_west02_holo", "att_vm_2x_west02", "att_vm_reflex_02", 
    "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_4x_east01_tall",
    "att_vm_4x_west01_tall", "att_vm_4x_west02_tall",
    "att_vm_scope_mike14", "att_vm_scope_vz"},

    {"att_laser", "attachment_vm_ar_t9longburst_laser01_cylinder", "attachment_vm_ar_t9longburst_laser02_cylinder", 
    "attachment_vm_ar_t9longburst_laser03_cylinder"},

    -- {"att_grip", "attachment_vm_ar_fasthandling_stubbygrip01", 
    -- "attachment_vm_ar_fasthandling_stubbygrip02", "attachment_vm_ar_fasthandling_vertgrip01",
    -- "attachment_vm_ar_fasthandling_vertgrip02", "attachment_vm_ar_fasthandling_vertgrip03", 
    -- "attachment_vm_ar_fasthandling_bipodgrip", "attachment_vm_ar_fasthandling_mixgrip02"},
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   
