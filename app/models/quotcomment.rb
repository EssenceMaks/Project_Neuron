class Quotcomment < ActiveRecord::Base
  belongs_to :quotation
  belongs_to :soul
  belongs_to :user
end
