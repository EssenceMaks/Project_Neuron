class Quotation < ActiveRecord::Base
  acts_as_votable

  belongs_to :soul
  has_many :quotycomments
end
