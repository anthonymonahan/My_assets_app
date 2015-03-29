require 'test_helper'

class SharesControllerTest < ActionController::TestCase
  setup do
    @share = shares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create share" do
    assert_difference('Share.count') do
      post :create, share: { (: @share.(, ): @share.), : @share., : @share., : @share., : @share., : @share., current_value: @share.current_value, customer_id: @share.customer_id, insurance_id: @share.insurance_id, name_of_share: @share.name_of_share, receipt_id: @share.receipt_id, serial_number: @share.serial_number }
    end

    assert_redirected_to share_path(assigns(:share))
  end

  test "should show share" do
    get :show, id: @share
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @share
    assert_response :success
  end

  test "should update share" do
    patch :update, id: @share, share: { (: @share.(, ): @share.), : @share., : @share., : @share., : @share., : @share., current_value: @share.current_value, customer_id: @share.customer_id, insurance_id: @share.insurance_id, name_of_share: @share.name_of_share, receipt_id: @share.receipt_id, serial_number: @share.serial_number }
    assert_redirected_to share_path(assigns(:share))
  end

  test "should destroy share" do
    assert_difference('Share.count', -1) do
      delete :destroy, id: @share
    end

    assert_redirected_to shares_path
  end
end
