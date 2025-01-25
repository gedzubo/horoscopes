require "application_system_test_case"

class HoroscopesTest < ApplicationSystemTestCase
  setup do
    @horoscope = horoscopes(:one)
  end

  test "visiting the index" do
    visit horoscopes_url
    assert_selector "h1", text: "Horoscopes"
  end

  test "should create horoscope" do
    visit horoscopes_url
    click_on "New horoscope"

    fill_in "Body", with: @horoscope.body
    fill_in "End date", with: @horoscope.end_date
    fill_in "Sign", with: @horoscope.sign_id
    fill_in "Start date", with: @horoscope.start_date
    fill_in "Title", with: @horoscope.title
    click_on "Create Horoscope"

    assert_text "Horoscope was successfully created"
    click_on "Back"
  end

  test "should update Horoscope" do
    visit horoscope_url(@horoscope)
    click_on "Edit this horoscope", match: :first

    fill_in "Body", with: @horoscope.body
    fill_in "End date", with: @horoscope.end_date
    fill_in "Sign", with: @horoscope.sign_id
    fill_in "Start date", with: @horoscope.start_date
    fill_in "Title", with: @horoscope.title
    click_on "Update Horoscope"

    assert_text "Horoscope was successfully updated"
    click_on "Back"
  end

  test "should destroy Horoscope" do
    visit horoscope_url(@horoscope)
    click_on "Destroy this horoscope", match: :first

    assert_text "Horoscope was successfully destroyed"
  end
end
