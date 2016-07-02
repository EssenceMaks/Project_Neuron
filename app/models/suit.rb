class Suit < ActiveRecord::Base

	has_many :my_skills
	accepts_nested_attributes_for :my_skills, reject_if: proc { |attributes| attributes['skill'].blank? }, allow_destroy: true

	has_many :interested_ins
	accepts_nested_attributes_for :interested_ins, reject_if: proc { |attributes| attributes['futureskill'].blank? }, allow_destroy: true
	
	has_many :educations
	accepts_nested_attributes_for :educations, reject_if: proc { |attributes| attributes['college'].blank? }, allow_destroy: true
	
	has_many :additional_educations
	accepts_nested_attributes_for :additional_educations, reject_if: proc { |attributes| attributes['academy'].blank? }, allow_destroy: true
	
	has_many :reasons
	accepts_nested_attributes_for :reasons, reject_if: proc { |attributes| attributes['motivation'].blank? }, allow_destroy: true
	
	
	validates :title, :description, :image, presence: true

	has_attached_file :image, styles: { medium: "210x175" } 
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
