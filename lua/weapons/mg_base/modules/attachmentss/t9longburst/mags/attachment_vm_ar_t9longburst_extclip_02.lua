
ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "attachment_vm_ar_t9longburst_extclip_02"
ATTACHMENT.Model = Model("models/viper/mw/attachments/t9longburst/attachment_vm_ar_t9longburst_extclip_02.mdl")
ATTACHMENT.Icon = Material("")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
