class Arquivo < ActiveRecord::Base
    belongs_to :professore 
     has_attached_file :arquivo
    
     has_attached_file :document
    
     validates_attachment :arquivo, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
