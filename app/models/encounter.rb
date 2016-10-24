class Encounter < ActiveRecord::Base
  belongs_to :patient
  validates :visitnumber, :admittedat, presence: true
  validates :room, :bed, numericality: true
  validate :discharge_date_is_possible?

  def discharge_date_is_possible?
    return if[:discharedat.blank?, :admittedat.blank?].any?
    if :discharedat > :admittedat
      errors.add(:discharedat, 'must me after admission date')
    end
  end
end
