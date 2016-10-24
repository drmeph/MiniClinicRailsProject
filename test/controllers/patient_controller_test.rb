require 'test_helper'

class PatientControllerTest < ActionController::TestCase

  test "should get list" do
    get :list
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patients: { :firstname => 'kevin', :middlename => "alex", :mrn => 'VNR401' }
    end

    assert_redirected_to patient_path('list')
  end
end
