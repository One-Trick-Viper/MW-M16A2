
ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "att_t10_vm_p01_ar_coslo723_mag_fast20rd"
ATTACHMENT.Model = Model("models/viper/gw/attachments/coslo723/att_t10_vm_p01_ar_coslo723_mag_fast20rd.mdl")
ATTACHMENT.Icon = Material("")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
