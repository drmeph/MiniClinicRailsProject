require 'test_helper'

class EncounterControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encounter" do
    assert_difference('Encounter.count') do
      my_date = DateTime.now.to_date
      post :create, encounter: { :visitnumber => 'VN0022', :admittedat => my_date, :patient_id => 1 }
    end

    assert_redirected_to patient_path(1)
  end
end
