require 'test_helper'

class AccesslevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accesslevel = accesslevels(:one)
  end

  test "should get index" do
    get accesslevels_url
    assert_response :success
  end

  test "should get new" do
    get new_accesslevel_url
    assert_response :success
  end

  test "should create accesslevel" do
    assert_difference('Accesslevel.count') do
      post accesslevels_url, params: { accesslevel: { accesslevelid: @accesslevel.accesslevelid } }
    end

    assert_redirected_to accesslevel_url(Accesslevel.last)
  end

  test "should show accesslevel" do
    get accesslevel_url(@accesslevel)
    assert_response :success
  end

  test "should get edit" do
    get edit_accesslevel_url(@accesslevel)
    assert_response :success
  end

  test "should update accesslevel" do
    patch accesslevel_url(@accesslevel), params: { accesslevel: { accesslevelid: @accesslevel.accesslevelid } }
    assert_redirected_to accesslevel_url(@accesslevel)
  end

  test "should destroy accesslevel" do
    assert_difference('Accesslevel.count', -1) do
      delete accesslevel_url(@accesslevel)
    end

    assert_redirected_to accesslevels_url
  end
end
