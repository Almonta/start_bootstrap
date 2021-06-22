require 'test_helper'

class StartBootstrapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_bootstrap = start_bootstraps(:one)
  end

  test "should get index" do
    get start_bootstraps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_bootstrap_url
    assert_response :success
  end

  test "should create start_bootstrap" do
    assert_difference('StartBootstrap.count') do
      post start_bootstraps_url, params: { start_bootstrap: {  } }
    end

    assert_redirected_to start_bootstrap_url(StartBootstrap.last)
  end

  test "should show start_bootstrap" do
    get start_bootstrap_url(@start_bootstrap)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_bootstrap_url(@start_bootstrap)
    assert_response :success
  end

  test "should update start_bootstrap" do
    patch start_bootstrap_url(@start_bootstrap), params: { start_bootstrap: {  } }
    assert_redirected_to start_bootstrap_url(@start_bootstrap)
  end

  test "should destroy start_bootstrap" do
    assert_difference('StartBootstrap.count', -1) do
      delete start_bootstrap_url(@start_bootstrap)
    end

    assert_redirected_to start_bootstraps_url
  end
end
