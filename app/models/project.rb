class Project < ActiveRecord::Base
  belongs_to :soul

  has_attached_file :imgproject, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/flower4.png"
  validates_attachment_content_type :imgproject, content_type: /\Aimage\/.*\Z/
end
