class Wishcomment < ActiveRecord::Base
  belongs_to :wish
  belongs_to :soul
  belongs_to :user
end
