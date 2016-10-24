require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save patient without firstname" do
    patient = Patient.new
    patient.middlename = "alex"
    patient.mrn = "BVN012"
    assert_not patient.save, "Saved the patient without a firstname"
  end

  test "should not save patient without middlename" do
    patient = Patient.new
    patient.firstname = "kevin"
    patient.mrn = "BVN012"
    assert_not patient.save, "Saved the patient without a middlename"
  end

  test "should not save patient without mrn" do
    patient = Patient.new
    patient.firstname = "kevin"
    patient.middlename = "alex"
    assert_not patient.save, "Saved the patient without a mrn"
  end

  test "should not save patient with firstname longer than 45 characters" do
    patient = Patient.new
    long_name = LONG_STRING
    patient.firstname = long_name
    patient.middlename = "alex"
    patient.mrn = "BVN012"
    assert_not patient.save, "Saved the patient with firstname too long"
  end

  test "should not save patient with middlename longer than 45 characters" do
    patient = Patient.new
    long_name = LONG_STRING
    patient.middlename = long_name
    patient.firstname = "kevin"
    patient.mrn = "BVN012"
    assert_not patient.save, "Saved the patient with middlename too long"
  end

  test "should not save patient with lastname longer than 45 characters" do
    patient = Patient.new
    long_name = LONG_STRING
    patient.firstname = "kevin"
    patient.middlename = "alex"
    patient.lastname = LONG_STRING
    patient.mrn = "BVN012"
    assert_not patient.save, "Saved the patient with lastname too long"
  end

  test "should not save patient with lastname longer than 6 characters" do
    patient = Patient.new
    patient.firstname = "kevin"
    patient.middlename = "alex"
    patient.mrn = "BVN012 too long"
    assert_not patient.save, "Saved the patient with mrn too long"
  end

  test "should not save patient with a non numerical weight" do
    patient = Patient.new
    patient.firstname = "kevin"
    patient.middlename = "alex"
    patient.mrn = "BVN012 too long"
    patient.weight = "string"
    assert_not patient.save, "Saved the patient with non numerical weight"
  end

  test "should not save patient with a non numerical height" do
    patient = Patient.new
    patient.firstname = "kevin"
    patient.middlename = "alex"
    patient.mrn = "BVN012 too long"
    patient.height = "string"
    assert_not patient.save, "Saved the patient with non numerical height"
  end
end
