require 'test_helper'

class ElectionsRacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elections_race = elections_races(:one)
  end

  test "should get index" do
    get elections_races_url
    assert_response :success
  end

  test "should get new" do
    get new_elections_race_url
    assert_response :success
  end

  test "should create elections_race" do
    assert_difference('ElectionsRace.count') do
      post elections_races_url, params: { elections_race: {  } }
    end

    assert_redirected_to elections_race_url(ElectionsRace.last)
  end

  test "should show elections_race" do
    get elections_race_url(@elections_race)
    assert_response :success
  end

  test "should get edit" do
    get edit_elections_race_url(@elections_race)
    assert_response :success
  end

  test "should update elections_race" do
    patch elections_race_url(@elections_race), params: { elections_race: {  } }
    assert_redirected_to elections_race_url(@elections_race)
  end

  test "should destroy elections_race" do
    assert_difference('ElectionsRace.count', -1) do
      delete elections_race_url(@elections_race)
    end

    assert_redirected_to elections_races_url
  end
end
