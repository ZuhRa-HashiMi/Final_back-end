require "test_helper"

class DoctorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doctors_index_url
    assert_response :success
  end

  test "should get new" do
    get doctors_new_url
    assert_response :success
  end

  test "should get creaate" do
    get doctors_creaate_url
    assert_response :success
  end

  test "should get destroy" do
    get doctors_destroy_url
    assert_response :success
  end
end
