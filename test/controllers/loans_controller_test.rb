require 'test_helper'

class LoansControllerTest < ActionController::TestCase
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post :create, loan: { (institution: @loan.(institution, : @loan., : @loan., : @loan., : @loan., : @loan., : @loan., account_number: @loan.account_number, amount: @loan.amount, customer_id: @loan.customer_id, insurance_id: @loan.insurance_id, receipt_id: @loan.receipt_id }
    end

    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should show loan" do
    get :show, id: @loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan
    assert_response :success
  end

  test "should update loan" do
    patch :update, id: @loan, loan: { (institution: @loan.(institution, : @loan., : @loan., : @loan., : @loan., : @loan., : @loan., account_number: @loan.account_number, amount: @loan.amount, customer_id: @loan.customer_id, insurance_id: @loan.insurance_id, receipt_id: @loan.receipt_id }
    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete :destroy, id: @loan
    end

    assert_redirected_to loans_path
  end
end
