require 'test_helper'

class MiscsControllerTest < ActionController::TestCase
  setup do
    @misc = miscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create misc" do
    assert_difference('Misc.count') do
      post :create, misc: { (name: @misc.(name, : @misc., : @misc., : @misc., : @misc., : @misc., : @misc., : @misc., customer_id: @misc.customer_id, image: @misc.image, insurance_id: @misc.insurance_id, receipt_id: @misc.receipt_id, serial_no: @misc.serial_no, value: @misc.value }
    end

    assert_redirected_to misc_path(assigns(:misc))
  end

  test "should show misc" do
    get :show, id: @misc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @misc
    assert_response :success
  end

  test "should update misc" do
    patch :update, id: @misc, misc: { (name: @misc.(name, : @misc., : @misc., : @misc., : @misc., : @misc., : @misc., : @misc., customer_id: @misc.customer_id, image: @misc.image, insurance_id: @misc.insurance_id, receipt_id: @misc.receipt_id, serial_no: @misc.serial_no, value: @misc.value }
    assert_redirected_to misc_path(assigns(:misc))
  end

  test "should destroy misc" do
    assert_difference('Misc.count', -1) do
      delete :destroy, id: @misc
    end

    assert_redirected_to miscs_path
  end
end
