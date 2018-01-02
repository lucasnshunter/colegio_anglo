class Projeto < ActiveRecord::Base
     has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
      validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
 has_attached_file :capa, styles: { medium: "300x300>", thumb: "100x100>" }
      validates_attachment_content_type :capa, content_type: /\Aimage\/.*\z/
    self.per_page = 8
end
