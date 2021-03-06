require 'test_helper'

class InvestmentsControllerTest < ActionController::TestCase
  setup do
    @investment = investments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investment" do
    assert_difference('Investment.count') do
      post :create, investment: { (type_of_investment: @investment.(type_of_investment, : @investment., : @investment., : @investment., customer_id: @investment.customer_id, insurance_id: @investment.insurance_id, receipt_id: @investment.receipt_id, value: @investment.value }
    end

    assert_redirected_to investment_path(assigns(:investment))
  end

  test "should show investment" do
    get :show, id: @investment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investment
    assert_response :success
  end

  test "should update investment" do
    patch :update, id: @investment, investment: { (type_of_investment: @investment.(type_of_investment, : @investment., : @investment., : @investment., customer_id: @investment.customer_id, insurance_id: @investment.insurance_id, receipt_id: @investment.receipt_id, value: @investment.value }
    assert_redirected_to investment_path(assigns(:investment))
  end

  test "should destroy investment" do
    assert_difference('Investment.count', -1) do
      delete :destroy, id: @investment
    end

    assert_redirected_to investments_path
  end
end
