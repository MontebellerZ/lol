require 'test_helper'

class ChampteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @champteam = champteams(:one)
  end

  test "should get index" do
    get champteams_url
    assert_response :success
  end

  test "should get new" do
    get new_champteam_url
    assert_response :success
  end

  test "should create champteam" do
    assert_difference('Champteam.count') do
      post champteams_url, params: { champteam: { championship_id: @champteam.championship_id, team_id: @champteam.team_id } }
    end

    assert_redirected_to champteam_url(Champteam.last)
  end

  test "should show champteam" do
    get champteam_url(@champteam)
    assert_response :success
  end

  test "should get edit" do
    get edit_champteam_url(@champteam)
    assert_response :success
  end

  test "should update champteam" do
    patch champteam_url(@champteam), params: { champteam: { championship_id: @champteam.championship_id, team_id: @champteam.team_id } }
    assert_redirected_to champteam_url(@champteam)
  end

  test "should destroy champteam" do
    assert_difference('Champteam.count', -1) do
      delete champteam_url(@champteam)
    end

    assert_redirected_to champteams_url
  end
end
