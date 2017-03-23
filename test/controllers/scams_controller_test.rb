require 'test_helper'

class ScamsControllerTest < ActionController::TestCase
  setup do
    @scam = scams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scam" do
    assert_difference('Scam.count') do
      post :create, scam: { messsage: @scam.messsage, result: @scam.result, sender: @scam.sender, title: @scam.title }
    end

    assert_redirected_to scam_path(assigns(:scam))
  end

  test "should show scam" do
    get :show, id: @scam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scam
    assert_response :success
  end

  test "should update scam" do
    patch :update, id: @scam, scam: { messsage: @scam.messsage, result: @scam.result, sender: @scam.sender, title: @scam.title }
    assert_redirected_to scam_path(assigns(:scam))
  end

  test "should destroy scam" do
    assert_difference('Scam.count', -1) do
      delete :destroy, id: @scam
    end

    assert_redirected_to scams_path
  end
end
