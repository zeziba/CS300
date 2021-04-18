require "application_system_test_case"

class RootusersTest < ApplicationSystemTestCase
  setup do
    @rootuser = rootusers(:one)
  end

  test "visiting the index" do
    visit rootusers_url
    assert_selector "h1", text: "Rootusers"
  end

  test "creating a Rootuser" do
    visit rootusers_url
    click_on "New Rootuser"

    click_on "Create Rootuser"

    assert_text "Rootuser was successfully created"
    click_on "Back"
  end

  test "updating a Rootuser" do
    visit rootusers_url
    click_on "Edit", match: :first

    click_on "Update Rootuser"

    assert_text "Rootuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Rootuser" do
    visit rootusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rootuser was successfully destroyed"
  end
end
