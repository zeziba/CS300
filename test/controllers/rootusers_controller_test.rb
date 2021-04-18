require 'test_helper'

class RootusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rootuser = rootusers(:one)
  end

  test "should get index" do
    get rootusers_url
    assert_response :success
  end

  test "should get new" do
    get new_rootuser_url
    assert_response :success
  end

  test "should create rootuser" do
    assert_difference('Rootuser.count') do
      post rootusers_url, params: { rootuser: {  } }
    end

    assert_redirected_to rootuser_url(Rootuser.last)
  end

  test "should show rootuser" do
    get rootuser_url(@rootuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_rootuser_url(@rootuser)
    assert_response :success
  end

  test "should update rootuser" do
    patch rootuser_url(@rootuser), params: { rootuser: {  } }
    assert_redirected_to rootuser_url(@rootuser)
  end

  test "should destroy rootuser" do
    assert_difference('Rootuser.count', -1) do
      delete rootuser_url(@rootuser)
    end

    assert_redirected_to rootusers_url
  end
end
