ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "attachment_vm_ar_t9longburst_barrel_02"
ATTACHMENT.Model = Model("models/viper/mw/attachments/t9longburst/attachment_vm_ar_t9longburst_barrel_02.mdl")
ATTACHMENT.Icon = Material("")
ATTACHMENT.Bodygroups = {
    ["tag_sling_loop"] = 1,
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
