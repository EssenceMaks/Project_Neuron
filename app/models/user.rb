class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :suits
  has_many :artcomments
  has_many :hobcomments
  has_many :purpcomments
  has_many :qoutcomments
  has_many :wishcomments
  has_many :projcomments
  has_one :soul
  before_create :build_soul #-> saves blank associated "Profile" object after user create

end
