require 'test_helper'

class MoneyOnDepositsControllerTest < ActionController::TestCase
  setup do
    @money_on_deposit = money_on_deposits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:money_on_deposits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create money_on_deposit" do
    assert_difference('MoneyOnDeposit.count') do
      post :create, money_on_deposit: { (institution: @money_on_deposit.(institution, : @money_on_deposit., : @money_on_deposit., account_number: @money_on_deposit.account_number, amount: @money_on_deposit.amount, customer_id: @money_on_deposit.customer_id, insurance_id: @money_on_deposit.insurance_id, receipt_id: @money_on_deposit.receipt_id }
    end

    assert_redirected_to money_on_deposit_path(assigns(:money_on_deposit))
  end

  test "should show money_on_deposit" do
    get :show, id: @money_on_deposit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @money_on_deposit
    assert_response :success
  end

  test "should update money_on_deposit" do
    patch :update, id: @money_on_deposit, money_on_deposit: { (institution: @money_on_deposit.(institution, : @money_on_deposit., : @money_on_deposit., account_number: @money_on_deposit.account_number, amount: @money_on_deposit.amount, customer_id: @money_on_deposit.customer_id, insurance_id: @money_on_deposit.insurance_id, receipt_id: @money_on_deposit.receipt_id }
    assert_redirected_to money_on_deposit_path(assigns(:money_on_deposit))
  end

  test "should destroy money_on_deposit" do
    assert_difference('MoneyOnDeposit.count', -1) do
      delete :destroy, id: @money_on_deposit
    end

    assert_redirected_to money_on_deposits_path
  end
end
