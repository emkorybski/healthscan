require 'test_helper'

class HealthCasesControllerTest < ActionController::TestCase
  setup do
    @health_case = health_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_case" do
    assert_difference('HealthCase.count') do
      post :create, health_case: { description: @health_case.description, user_id: @health_case.user_id }
    end

    assert_redirected_to health_case_path(assigns(:health_case))
  end

  test "should show health_case" do
    get :show, id: @health_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_case
    assert_response :success
  end

  test "should update health_case" do
    patch :update, id: @health_case, health_case: { description: @health_case.description, user_id: @health_case.user_id }
    assert_redirected_to health_case_path(assigns(:health_case))
  end

  test "should destroy health_case" do
    assert_difference('HealthCase.count', -1) do
      delete :destroy, id: @health_case
    end

    assert_redirected_to health_cases_path
  end
end
