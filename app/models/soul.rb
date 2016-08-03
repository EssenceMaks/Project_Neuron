class Soul < ActiveRecord::Base
	belongs_to :user
	has_many :resumes
	has_many :projects
	has_many :purposes
	has_many :quotations
	has_many :articles
	has_many :experiences
	has_many :wishes
	has_many :hobbies

	has_attached_file :imgsoul, styles: { large: "300x300#", medium: "100x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :imgsoul, content_type: /\Aimage\/.*\Z/
end
