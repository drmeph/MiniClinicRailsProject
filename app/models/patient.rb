class Patient < ActiveRecord::Base
  has_many :encounters
  validates :firstname, :middlename, :mrn, presence : true
end
