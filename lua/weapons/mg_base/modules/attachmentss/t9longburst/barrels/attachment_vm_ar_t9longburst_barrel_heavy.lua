
ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "attachment_vm_ar_t9longburst_barrel_heavy"
ATTACHMENT.Model = Model("models/viper/mw/attachments/t9longburst/attachment_vm_ar_t9longburst_barrel_heavy.mdl")
ATTACHMENT.Icon = Material("")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
