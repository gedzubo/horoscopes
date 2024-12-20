require "test_helper"

class SignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sign = signs(:aries)
    @header = {
      Authorization: ActionController::HttpAuthentication::Basic.encode_credentials(
        users(:one).email_address,
        users(:one).password
      )
    }
  end

  test "should get index" do
    get signs_url, headers: @header
    assert_response :success
  end

  test "should show sign" do
    get sign_url(@sign), headers: @header
    assert_response :success
  end

  test "should get edit" do
    get edit_sign_url(@sign), headers: @header
    assert_response :success
  end

  test "should update sign" do
    patch sign_url(@sign), params: { sign: { description: @sign.description, period: @sign.period } }, headers: @header
    assert_redirected_to sign_url(@sign)
  end
end
