require "application_system_test_case"

class HoroscopeTypesTest < ApplicationSystemTestCase
  setup do
    @horoscope_type = horoscope_types(:one)
  end

  test "visiting the index" do
    visit horoscope_types_url
    assert_selector "h1", text: "Horoscope types"
  end

  test "should create horoscope type" do
    visit horoscope_types_url
    click_on "New horoscope type"

    fill_in "Name", with: @horoscope_type.name
    click_on "Create Horoscope type"

    assert_text "Horoscope type was successfully created"
    click_on "Back"
  end

  test "should update Horoscope type" do
    visit horoscope_type_url(@horoscope_type)
    click_on "Edit this horoscope type", match: :first

    fill_in "Name", with: @horoscope_type.name
    click_on "Update Horoscope type"

    assert_text "Horoscope type was successfully updated"
    click_on "Back"
  end

  test "should destroy Horoscope type" do
    visit horoscope_type_url(@horoscope_type)
    click_on "Destroy this horoscope type", match: :first

    assert_text "Horoscope type was successfully destroyed"
  end
end
