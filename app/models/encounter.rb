class Encounter < ActiveRecord::Base
  belongs_to :patient
  validates :visitnumber, :admittedat, presence: true
  validates :room, :bed, numericality: true, :allow_nil => true
  validate :discharge_date_is_possible?

  def discharge_date_is_possible?
    if !discharedat.blank?
      if discharedat < admittedat
        errors.add(:discharedat, 'must me after admission date')
      end
    end
  end
end
