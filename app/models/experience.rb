class Experience < ActiveRecord::Base
  belongs_to :soul

  has_many :experiencelists
  accepts_nested_attributes_for :experiencelists, reject_if: proc { |attributes| attributes['exp_mark'].blank? }, allow_destroy: true
  
end
