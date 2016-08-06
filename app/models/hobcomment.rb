class Hobcomment < ActiveRecord::Base
  belongs_to :hobby
  belongs_to :soul
  belongs_to :user
end
