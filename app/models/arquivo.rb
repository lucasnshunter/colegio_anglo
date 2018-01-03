class Arquivo < ActiveRecord::Base
    belongs_to :professore 
     has_attached_file :arquivo
    
    #validates_attachment :arquivo, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
    validates_attachment_content_type :arquivo, :content_type => %w(application/zip application/msword application/vnd.ms-office application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
    
end
