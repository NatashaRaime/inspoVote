require "application_system_test_case"

class ElectionsRacesTest < ApplicationSystemTestCase
  setup do
    @elections_race = elections_races(:one)
  end

  test "visiting the index" do
    visit elections_races_url
    assert_selector "h1", text: "Elections Races"
  end

  test "creating a Elections race" do
    visit elections_races_url
    click_on "New Elections Race"

    click_on "Create Elections race"

    assert_text "Elections race was successfully created"
    click_on "Back"
  end

  test "updating a Elections race" do
    visit elections_races_url
    click_on "Edit", match: :first

    click_on "Update Elections race"

    assert_text "Elections race was successfully updated"
    click_on "Back"
  end

  test "destroying a Elections race" do
    visit elections_races_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Elections race was successfully destroyed"
  end
end
