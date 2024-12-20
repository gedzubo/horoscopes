require "test_helper"

class SignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sign = signs(:aries)
    @user = users(:one)
    sign_in(@user)
  end

  test "should get index" do
    get signs_url
    assert_response :success
  end

  test "should show sign" do
    get sign_url(@sign)
    assert_response :success
  end

  test "should get edit" do
    get edit_sign_url(@sign)
    assert_response :success
  end

  test "should update sign" do
    patch sign_url(@sign), params: { sign: { description: @sign.description, period: @sign.period } }
    assert_redirected_to sign_url(@sign)
  end
end
