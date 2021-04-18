require "application_system_test_case"

class ProjectProjectorsTest < ApplicationSystemTestCase
  setup do
    @project_projector = project_projectors(:one)
  end

  test "visiting the index" do
    visit project_projectors_url
    assert_selector "h1", text: "Project Projectors"
  end

  test "creating a Project projector" do
    visit project_projectors_url
    click_on "New Project Projector"

    click_on "Create Project projector"

    assert_text "Project projector was successfully created"
    click_on "Back"
  end

  test "updating a Project projector" do
    visit project_projectors_url
    click_on "Edit", match: :first

    click_on "Update Project projector"

    assert_text "Project projector was successfully updated"
    click_on "Back"
  end

  test "destroying a Project projector" do
    visit project_projectors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project projector was successfully destroyed"
  end
end
