require 'test_helper'

class PensionsControllerTest < ActionController::TestCase
  setup do
    @pension = pensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pension" do
    assert_difference('Pension.count') do
      post :create, pension: { (company: @pension.(company, ): @pension.), : @pension., : @pension., : @pension., : @pension., address: @pension.address, current_value: @pension.current_value, customer_id: @pension.customer_id, expected_value_at_maturity: @pension.expected_value_at_maturity, insurance_id: @pension.insurance_id, maturity_date: @pension.maturity_date, receipt_id: @pension.receipt_id }
    end

    assert_redirected_to pension_path(assigns(:pension))
  end

  test "should show pension" do
    get :show, id: @pension
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pension
    assert_response :success
  end

  test "should update pension" do
    patch :update, id: @pension, pension: { (company: @pension.(company, ): @pension.), : @pension., : @pension., : @pension., : @pension., address: @pension.address, current_value: @pension.current_value, customer_id: @pension.customer_id, expected_value_at_maturity: @pension.expected_value_at_maturity, insurance_id: @pension.insurance_id, maturity_date: @pension.maturity_date, receipt_id: @pension.receipt_id }
    assert_redirected_to pension_path(assigns(:pension))
  end

  test "should destroy pension" do
    assert_difference('Pension.count', -1) do
      delete :destroy, id: @pension
    end

    assert_redirected_to pensions_path
  end
end
