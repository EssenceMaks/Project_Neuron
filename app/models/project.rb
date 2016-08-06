class Project < ActiveRecord::Base
  belongs_to :soul
  has_many :projcomments

  has_many :projectteams
  accepts_nested_attributes_for :projectteams, reject_if: proc { |attributes| attributes['team'].blank? }, allow_destroy: true

  has_attached_file :imgproject, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/flower4.png"
  validates_attachment_content_type :imgproject, content_type: /\Aimage\/.*\Z/
end
