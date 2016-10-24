class Patient < ActiveRecord::Base
  has_many :encounters
  validates :firstname, :middlename, :mrn, presence: true
  validates :weight, :height, numericality: true
end
