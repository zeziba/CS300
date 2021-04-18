require 'test_helper'

class ProjectProjectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_projector = project_projectors(:one)
  end

  test "should get index" do
    get project_projectors_url
    assert_response :success
  end

  test "should get new" do
    get new_project_projector_url
    assert_response :success
  end

  test "should create project_projector" do
    assert_difference('ProjectProjector.count') do
      post project_projectors_url, params: { project_projector: {  } }
    end

    assert_redirected_to project_projector_url(ProjectProjector.last)
  end

  test "should show project_projector" do
    get project_projector_url(@project_projector)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_projector_url(@project_projector)
    assert_response :success
  end

  test "should update project_projector" do
    patch project_projector_url(@project_projector), params: { project_projector: {  } }
    assert_redirected_to project_projector_url(@project_projector)
  end

  test "should destroy project_projector" do
    assert_difference('ProjectProjector.count', -1) do
      delete project_projector_url(@project_projector)
    end

    assert_redirected_to project_projectors_url
  end
end
