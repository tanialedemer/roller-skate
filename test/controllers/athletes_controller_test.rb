require 'test_helper'

class AthletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @athlete = athletes(:one)
  end

  test "should get index" do
    get athletes_url
    assert_response :success
  end

  test "should get new" do
    get new_athlete_url
    assert_response :success
  end

  test "should create athlete" do
    assert_difference('Athlete.count') do
      post athletes_url, params: { athlete: { category_id: @athlete.category_id, compulsory_figure_id: @athlete.compulsory_figure_id, date_bir: @athlete.date_bir, document: @athlete.document, free_skate_id: @athlete.free_skate_id, last_name: @athlete.last_name, name: @athlete.name, year: @athlete.year } }
    end

    assert_redirected_to athlete_url(Athlete.last)
  end

  test "should show athlete" do
    get athlete_url(@athlete)
    assert_response :success
  end

  test "should get edit" do
    get edit_athlete_url(@athlete)
    assert_response :success
  end

  test "should update athlete" do
    patch athlete_url(@athlete), params: { athlete: { category_id: @athlete.category_id, compulsory_figure_id: @athlete.compulsory_figure_id, date_bir: @athlete.date_bir, document: @athlete.document, free_skate_id: @athlete.free_skate_id, last_name: @athlete.last_name, name: @athlete.name, year: @athlete.year } }
    assert_redirected_to athlete_url(@athlete)
  end

  test "should destroy athlete" do
    assert_difference('Athlete.count', -1) do
      delete athlete_url(@athlete)
    end

    assert_redirected_to athletes_url
  end
end
