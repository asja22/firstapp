require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get employees_home_url
    assert_response :success
  end

  test "should get list" do
    get employees_list_url
    assert_response :success
  end

  test "should get new" do
    get employees_new_url
    assert_response :success
  end

  test "should get edit" do
    get employees_edit_url
    assert_response :success
  end

end
