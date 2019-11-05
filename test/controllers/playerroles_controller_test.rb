require 'test_helper'

class PlayerrolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playerrole = playerroles(:one)
  end

  test "should get index" do
    get playerroles_url
    assert_response :success
  end

  test "should get new" do
    get new_playerrole_url
    assert_response :success
  end

  test "should create playerrole" do
    assert_difference('Playerrole.count') do
      post playerroles_url, params: { playerrole: { player_id: @playerrole.player_id, role_id: @playerrole.role_id } }
    end

    assert_redirected_to playerrole_url(Playerrole.last)
  end

  test "should show playerrole" do
    get playerrole_url(@playerrole)
    assert_response :success
  end

  test "should get edit" do
    get edit_playerrole_url(@playerrole)
    assert_response :success
  end

  test "should update playerrole" do
    patch playerrole_url(@playerrole), params: { playerrole: { player_id: @playerrole.player_id, role_id: @playerrole.role_id } }
    assert_redirected_to playerrole_url(@playerrole)
  end

  test "should destroy playerrole" do
    assert_difference('Playerrole.count', -1) do
      delete playerrole_url(@playerrole)
    end

    assert_redirected_to playerroles_url
  end
end
