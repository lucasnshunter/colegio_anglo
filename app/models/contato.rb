class Contato < ActiveRecord::Base
     has_attached_file :arquivo, styles: { medium: "300x300>", thumb: "100x100>" }
     validates_attachment_content_type :arquivo, :content_type => ["application/pdf", "application/zip", "application/x-zip", "application/x-zip-compressed","application/octet-stream","application/vnd.ms-office","application/vnd.openxmlformats-officedocument.spreadsheetml.sheet","application/vnd.openxmlformats-officedocument.presentationml.presentation","image/jpg", "image/png", "image/jpeg","application/msword","application/vnd.openxmlformats-officedocument.wordprocessingml.document"]
end
