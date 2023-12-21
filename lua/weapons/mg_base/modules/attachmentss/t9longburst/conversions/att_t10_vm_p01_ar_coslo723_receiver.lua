ATTACHMENT.Base = "att_conversion"
ATTACHMENT.Name = "att_t10_vm_p01_ar_coslo723_receiver"
ATTACHMENT.Model = Model("models/viper/gw/attachments/coslo723/att_t10_vm_p01_ar_coslo723_receiver.mdl")
ATTACHMENT.Icon = Material("")
ATTACHMENT.Bodygroups = {
    ["receiver"] = 1,
    ["tag_sling_loop"] = 1,
}

ATTACHMENT.Conversion = {
    [2] = {"att_t10_vm_p01_ar_coslo723_stock", "att_t10_vm_p01_ar_coslo723_stock_mix", "att_t10_vm_p01_ar_coslo723_stock_light",
        "att_t10_vm_p01_ar_coslo723_stock_flinch", "att_t10_vm_p01_ar_coslo723_stock_adsmove"},

    [3] = { "att_t10_vm_p01_ar_coslo723_mag", "att_t10_vm_p01_ar_coslo723_mag_fastreload1",
    "att_t10_vm_p01_ar_coslo723_mag_fastreload2", "att_t10_vm_p01_ar_coslo723_mag_fast20rd",
    "att_t10_vm_p01_ar_coslo723_mag_ext", "att_t10_vm_p01_ar_coslo723_mag_boxmag"},

    [5] = { "att_t10_vm_p01_ar_coslo723_barrel", "att_t10_vm_p01_ar_coslo723_barrel_velocity",
    "att_t10_vm_p01_ar_coslo723_barrel_short_hical1", "att_t10_vm_p01_ar_coslo723_barrel_short_hical2", "att_t10_vm_p01_ar_coslo723_barrel_range",
    "att_t10_vm_p01_ar_coslo723_barrel_mixbar"},
    
    [6] = {},
    [1] = {},
    [7] = {},
    [8] = {}
}

-- ATTACHMENT.Replacements = {
--     ["attachment_vm_ar_t9longburst_stock"] = "att_t10_vm_p01_ar_coslo723_stock",
--     ["attachment_vm_ar_t9longburst_mag"] = "att_t10_vm_p01_ar_coslo723_mag",
--     ["attachment_vm_ar_t9longburst_barrel"] = "att_t10_vm_p01_ar_coslo723_barrel"
-- }


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    -- BaseClass.Stats(self, weapon)
end