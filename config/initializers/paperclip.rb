Paperclip::Attachment.interpolations[:gallery] = proc do |attachment, style|
  attachment.instance.gallery.name
end