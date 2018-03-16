class Photo < ActiveRecord::Base
     has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }
      validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
      belongs_to :galery
      self.per_page = 6

end
