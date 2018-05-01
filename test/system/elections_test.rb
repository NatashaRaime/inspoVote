require "application_system_test_case"

class ElectionsTest < ApplicationSystemTestCase
  setup do
    @election = elections(:one)
  end

  test "visiting the index" do
    visit elections_url
    assert_selector "h1", text: "Elections"
  end

  test "creating a Election" do
    visit elections_url
    click_on "New Election"

    fill_in "Completed", with: @election.completed
    fill_in "Districtid", with: @election.districtId
    fill_in "Electiondate", with: @election.electionDate
    fill_in "Electionid", with: @election.electionId
    fill_in "Title", with: @election.title
    click_on "Create Election"

    assert_text "Election was successfully created"
    click_on "Back"
  end

  test "updating a Election" do
    visit elections_url
    click_on "Edit", match: :first

    fill_in "Completed", with: @election.completed
    fill_in "Districtid", with: @election.districtId
    fill_in "Electiondate", with: @election.electionDate
    fill_in "Electionid", with: @election.electionId
    fill_in "Title", with: @election.title
    click_on "Update Election"

    assert_text "Election was successfully updated"
    click_on "Back"
  end

  test "destroying a Election" do
    visit elections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Election was successfully destroyed"
  end
end
