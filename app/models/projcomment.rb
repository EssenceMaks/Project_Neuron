class Projcomment < ActiveRecord::Base
  belongs_to :project
  belongs_to :soul
  belongs_to :user
end
