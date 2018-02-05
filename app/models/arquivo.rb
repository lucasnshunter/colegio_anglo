class Arquivo < ActiveRecord::Base
    belongs_to :professore 
     has_attached_file :arquivo
    
     has_attached_file :document
    has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :arquivo, :content_type => ["application/pdf", "application/zip", "application/x-zip", "application/x-zip-compressed","application/octet-stream","application/vnd.ms-office","application/vnd.openxmlformats-officedocument.spreadsheetml.sheet","application/vnd.openxmlformats-officedocument.presentationml.presentation","image/jpg", "image/png", "image/jpeg","application/msword","application/vnd.openxmlformats-officedocument.wordprocessingml.document"]
    #validates_attachment :arquivo, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
    