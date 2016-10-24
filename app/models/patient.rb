class Patient < ActiveRecord::Base
  has_many :encounters
  validates :firstname, :middlename, :mrn, presence: true
  validates :firstname, :middlename, :lastname, length: {maximum: 45}
  validates :mrn, length: {maximum: 6}
  validates :weight, :height, numericality: true, :allow_nil => true
end
