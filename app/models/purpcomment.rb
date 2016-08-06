class Purpcomment < ActiveRecord::Base
  belongs_to :purpose
  belongs_to :soul
  belongs_to :user
end
