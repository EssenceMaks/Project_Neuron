class Soul < ActiveRecord::Base
	belongs_to :user
	has_many :projects
	has_many :purposes
	has_many :quotations
	has_many :articles
	has_many :experiences
	has_many :wishes
	has_many :hobbies
end
