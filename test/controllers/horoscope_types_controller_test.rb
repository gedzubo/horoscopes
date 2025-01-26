require "test_helper"

class HoroscopeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horoscope_type = horoscope_types(:daily)
    @user = users(:one)
    sign_in(@user)
  end

  test "should get index" do
    get horoscope_types_url
    assert_response :success
  end

  test "should get new" do
    get new_horoscope_type_url
    assert_response :success
  end

  test "should create horoscope_type" do
    assert_difference("HoroscopeType.count") do
      post horoscope_types_url, params: { horoscope_type: { name: @horoscope_type.name } }
    end

    assert_redirected_to horoscope_type_url(HoroscopeType.last)
  end

  test "should show horoscope_type" do
    get horoscope_type_url(@horoscope_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_horoscope_type_url(@horoscope_type)
    assert_response :success
  end

  test "should update horoscope_type" do
    patch horoscope_type_url(@horoscope_type), params: { horoscope_type: { name: @horoscope_type.name } }
    assert_redirected_to horoscope_type_url(@horoscope_type)
  end

  test "should destroy horoscope_type" do
    assert_difference("HoroscopeType.count", -1) do
      delete horoscope_type_url(@horoscope_type)
    end

    assert_redirected_to horoscope_types_url
  end
end
