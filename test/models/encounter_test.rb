require 'test_helper'

class EncounterTest < ActiveSupport::TestCase

  test "should not save encounter without visitnumber" do
    encounter = Encounter.new
    assert_not encounter.save, "Saved the encounter without a visitnumber"
  end

  test "should not save encounter without admittedat" do
    encounter = Encounter.new
    encounter.visitnumber = "VN0015"
    assert_not encounter.save, "Saved the encounter without a admittedat"
  end

  test "should not save encounter with a non numerical room" do
    encounter = Encounter.new
    encounter.visitnumber = "VN0015"
    encounter.admittedat = DateTime.now.to_date
    encounter.room = "string"
    assert_not encounter.save
  end

  test "should not save encounter with a non numerical bed" do
    encounter = Encounter.new
    encounter.visitnumber = "VN0015"
    encounter.admittedat = DateTime.now.to_date
    encounter.bed = "string"
    assert_not encounter.save
  end

  test "should not save encounter with discharedat before admittedat" do
    encounter = Encounter.new
    encounter.visitnumber = "VN0015"
    encounter.admittedat = DateTime.now.to_date
    encounter.discharedat = DateTime.yesterday.to_date
    assert_not encounter.save
  end
end
