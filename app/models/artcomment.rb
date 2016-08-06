class Artcomment < ActiveRecord::Base
  belongs_to :article
  belongs_to :soul
  belongs_to :user
end
