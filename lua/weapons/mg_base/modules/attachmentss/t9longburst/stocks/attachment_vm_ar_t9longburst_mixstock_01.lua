
ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "attachment_vm_ar_t9longburst_mixstock_01"
ATTACHMENT.Model = Model("models/viper/mw/attachments/t9longburst/attachment_vm_ar_t9longburst_mixstock_01.mdl")
ATTACHMENT.Icon = Material("")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
