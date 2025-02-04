require "test_helper"

class HoroscopesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horoscope = horoscopes(:first_horoscope)
    @user = users(:one)
    sign_in(@user)
  end

  test "should get index" do
    get horoscopes_url
    assert_response :success
  end

  test "should get new" do
    get new_horoscope_url
    assert_response :success
  end

  test "should create horoscope" do
    assert_difference("Horoscope.count") do
      post horoscopes_url, params: { horoscope: { body: @horoscope.body, end_date: @horoscope.end_date, sign_id: @horoscope.sign_id, start_date: @horoscope.start_date, title: @horoscope.title } }
    end

    assert_redirected_to horoscope_url(Horoscope.last)
  end

  test "should show horoscope" do
    get horoscope_url(@horoscope)
    assert_response :success
  end

  test "should get edit" do
    get edit_horoscope_url(@horoscope)
    assert_response :success
  end

  test "should update horoscope" do
    patch horoscope_url(@horoscope), params: { horoscope: { body: @horoscope.body, end_date: @horoscope.end_date, sign_id: @horoscope.sign_id, start_date: @horoscope.start_date, title: @horoscope.title } }
    assert_redirected_to horoscope_url(@horoscope)
  end

  test "should destroy horoscope" do
    assert_difference("Horoscope.count", -1) do
      delete horoscope_url(@horoscope)
    end

    assert_redirected_to horoscopes_url
  end
end
