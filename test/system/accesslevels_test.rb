require "application_system_test_case"

class AccesslevelsTest < ApplicationSystemTestCase
  setup do
    @accesslevel = accesslevels(:one)
  end

  test "visiting the index" do
    visit accesslevels_url
    assert_selector "h1", text: "Accesslevels"
  end

  test "creating a Accesslevel" do
    visit accesslevels_url
    click_on "New Accesslevel"

    fill_in "Accesslevelid", with: @accesslevel.accesslevelid
    click_on "Create Accesslevel"

    assert_text "Accesslevel was successfully created"
    click_on "Back"
  end

  test "updating a Accesslevel" do
    visit accesslevels_url
    click_on "Edit", match: :first

    fill_in "Accesslevelid", with: @accesslevel.accesslevelid
    click_on "Update Accesslevel"

    assert_text "Accesslevel was successfully updated"
    click_on "Back"
  end

  test "destroying a Accesslevel" do
    visit accesslevels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accesslevel was successfully destroyed"
  end
end
