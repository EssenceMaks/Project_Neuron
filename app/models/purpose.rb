class Purpose < ActiveRecord::Base
  belongs_to :soul
  has_many :purpcomments

  has_attached_file :imgpurpose, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imgpurpose, content_type: /\Aimage\/.*\Z/
end
