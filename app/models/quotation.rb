class Quotation < ActiveRecord::Base
  belongs_to :soul
  has_many :quotycomments
end
