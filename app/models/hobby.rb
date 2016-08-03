class Hobby < ActiveRecord::Base
  belongs_to :soul

  has_attached_file :imghobby, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imghobby, content_type: /\Aimage\/.*\Z/
end
