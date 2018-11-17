require 'test_helper'

class ChecklibsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checklib = checklibs(:one)
  end

  test "should get index" do
    get checklibs_url
    assert_response :success
  end

  test "should get new" do
    get new_checklib_url
    assert_response :success
  end

  test "should create checklib" do
    assert_difference('Checklib.count') do
      post checklibs_url, params: { checklib: {  } }
    end

    assert_redirected_to checklib_url(Checklib.last)
  end

  test "should show checklib" do
    get checklib_url(@checklib)
    assert_response :success
  end

  test "should get edit" do
    get edit_checklib_url(@checklib)
    assert_response :success
  end

  test "should update checklib" do
    patch checklib_url(@checklib), params: { checklib: {  } }
    assert_redirected_to checklib_url(@checklib)
  end

  test "should destroy checklib" do
    assert_difference('Checklib.count', -1) do
      delete checklib_url(@checklib)
    end

    assert_redirected_to checklibs_url
  end
end
