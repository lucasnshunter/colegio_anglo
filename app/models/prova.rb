class Prova < ActiveRecord::Base
     has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
      validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

 has_attached_file :pdf
    validates_attachment :pdf, content_type: { content_type: "application/pdf" }

end
