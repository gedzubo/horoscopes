require "application_system_test_case"

class SignsTest < ApplicationSystemTestCase
  setup do
    @sign = signs(:one)
  end

  test "visiting the index" do
    visit signs_url
    assert_selector "h1", text: "Signs"
  end

  test "should create sign" do
    visit signs_url
    click_on "New sign"

    fill_in "Description", with: @sign.description
    fill_in "Name", with: @sign.name
    fill_in "Period", with: @sign.period
    click_on "Create Sign"

    assert_text "Sign was successfully created"
    click_on "Back"
  end

  test "should update Sign" do
    visit sign_url(@sign)
    click_on "Edit this sign", match: :first

    fill_in "Description", with: @sign.description
    fill_in "Name", with: @sign.name
    fill_in "Period", with: @sign.period
    click_on "Update Sign"

    assert_text "Sign was successfully updated"
    click_on "Back"
  end

  test "should destroy Sign" do
    visit sign_url(@sign)
    click_on "Destroy this sign", match: :first

    assert_text "Sign was successfully destroyed"
  end
end
