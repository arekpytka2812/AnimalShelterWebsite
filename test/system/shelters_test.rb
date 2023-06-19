require "application_system_test_case"

class SheltersTest < ApplicationSystemTestCase
  setup do
    @shelter = shelters(:one)
  end

  test "visiting the index" do
    visit shelters_url
    assert_selector "h1", text: "Shelters"
  end

  test "should create shelter" do
    visit shelters_url
    click_on "New shelter"

    fill_in "Address", with: @shelter.address
    fill_in "Animalnumber", with: @shelter.animalNumber
    fill_in "Cagesnumber", with: @shelter.cagesNumber
    fill_in "Description", with: @shelter.description
    click_on "Create Shelter"

    assert_text "Shelter was successfully created"
    click_on "Back"
  end

  test "should update Shelter" do
    visit shelter_url(@shelter)
    click_on "Edit this shelter", match: :first

    fill_in "Address", with: @shelter.address
    fill_in "Animalnumber", with: @shelter.animalNumber
    fill_in "Cagesnumber", with: @shelter.cagesNumber
    fill_in "Description", with: @shelter.description
    click_on "Update Shelter"

    assert_text "Shelter was successfully updated"
    click_on "Back"
  end

  test "should destroy Shelter" do
    visit shelter_url(@shelter)
    click_on "Destroy this shelter", match: :first

    assert_text "Shelter was successfully destroyed"
  end
end
