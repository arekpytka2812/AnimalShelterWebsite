require "application_system_test_case"

class CagesTest < ApplicationSystemTestCase
  setup do
    @cage = cages(:one)
  end

  test "visiting the index" do
    visit cages_url
    assert_selector "h1", text: "Cages"
  end

  test "should create cage" do
    visit cages_url
    click_on "New cage"

    fill_in "Animal", with: @cage.animal_id
    fill_in "Cagenumber", with: @cage.cageNumber
    fill_in "Shelter", with: @cage.shelter_id
    click_on "Create Cage"

    assert_text "Cage was successfully created"
    click_on "Back"
  end

  test "should update Cage" do
    visit cage_url(@cage)
    click_on "Edit this cage", match: :first

    fill_in "Animal", with: @cage.animal_id
    fill_in "Cagenumber", with: @cage.cageNumber
    fill_in "Shelter", with: @cage.shelter_id
    click_on "Update Cage"

    assert_text "Cage was successfully updated"
    click_on "Back"
  end

  test "should destroy Cage" do
    visit cage_url(@cage)
    click_on "Destroy this cage", match: :first

    assert_text "Cage was successfully destroyed"
  end
end
