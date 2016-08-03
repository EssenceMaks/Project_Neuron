class Resume < ActiveRecord::Base
  belongs_to :soul

  has_attached_file :imgresume, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imgresume, content_type: /\Aimage\/.*\Z/
end
