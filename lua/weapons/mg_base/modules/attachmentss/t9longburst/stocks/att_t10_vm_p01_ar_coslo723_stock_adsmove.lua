
ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "att_t10_vm_p01_ar_coslo723_stock_adsmove"
ATTACHMENT.Model = Model("models/viper/gw/attachments/coslo723/att_t10_vm_p01_ar_coslo723_stock_adsmove.mdl")
ATTACHMENT.Icon = Material("")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
