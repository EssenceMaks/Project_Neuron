class Wish < ActiveRecord::Base
  acts_as_votable
  
  belongs_to :soul
  has_many :wishcomments

  has_attached_file :imgwish, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imgwish, content_type: /\Aimage\/.*\Z/
end
