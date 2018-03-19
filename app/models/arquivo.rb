class Arquivo < ActiveRecord::Base
    belongs_to :professore 
     has_attached_file :arquivo
    
     has_attached_file :document
    has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :arquivo, :content_type => ["application/pdf", "application/zip", "application/x-zip", "application/x-zip-compressed","application/octet-stream","application/vnd.ms-office","application/vnd.openxmlformats-officedocument.spreadsheetml.sheet","application/vnd.openxmlformats-officedocument.presentationml.presentation","image/jpg", "image/png", "image/jpeg","application/msword","application/vnd.openxmlformats-officedocument.wordprocessingml.document"]
    #validates_attachment :arquivo, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

    def define_turma turma
       case turma # a_variable is the variable we want to compare
            when 1  
              "Maternal"
            when 2   
              "Maternal fase 1"
            when 3
              "Maternal fase 2"
            when 4
              "Maternal fase 3"
            when 5
               "primeiro ano"
            when 6
              "segundo ano"   
            when 7
              "terceiro ano"               
            when 8
               "quarto ano"                  
            when 9 
                " quinto ano"                        
            when 10
             "sexto ano"                            
            when 11
                 "setimo ano"
            when 12
                 "oitavo ano"
            when 13
                 "nono ano"
            when 14 
                 "primeiro ano ensino medio"
            when 15
             "segundo ano ensino medio"    
            when 16
                 "terceiro ano ensino medio"
            else
              puts "turma nao indentificada"
            end
    end
end
    