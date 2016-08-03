class Resume < ActiveRecord::Base
  belongs_to :soul

	has_many :my_skills
	has_many :interested_ins
	has_many :educations
	has_many :additional_educations
	has_many :reasons
	has_many :workobjectives
	
	accepts_nested_attributes_for :my_skills, reject_if: proc { |attributes| attributes['skill'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :interested_ins, reject_if: proc { |attributes| attributes['futureskill'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :educations, reject_if: proc { |attributes| attributes['college'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :additional_educations, reject_if: proc { |attributes| attributes['academy'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :reasons, reject_if: proc { |attributes| attributes['reason'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :workobjectives, reject_if: proc { |attributes| attributes['objective'].blank? }, allow_destroy: true

  has_attached_file :imgresume, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imgresume, content_type: /\Aimage\/.*\Z/
end
