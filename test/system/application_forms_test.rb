require "application_system_test_case"

class ApplicationFormsTest < ApplicationSystemTestCase
  setup do
    @application_form = application_forms(:one)
  end

  test "visiting the index" do
    visit application_forms_url
    assert_selector "h1", text: "Application forms"
  end

  test "should create application form" do
    visit application_forms_url
    click_on "New application form"

    fill_in "Animal", with: @application_form.animal_id
    fill_in "Email", with: @application_form.email
    fill_in "Firstname", with: @application_form.firstname
    fill_in "Lastname", with: @application_form.lastname
    fill_in "Phone", with: @application_form.phone
    fill_in "Shelter", with: @application_form.shelter_id
    fill_in "Status", with: @application_form.status
    click_on "Create Application form"

    assert_text "Application form was successfully created"
    click_on "Back"
  end

  test "should update Application form" do
    visit application_form_url(@application_form)
    click_on "Edit this application form", match: :first

    fill_in "Animal", with: @application_form.animal_id
    fill_in "Email", with: @application_form.email
    fill_in "Firstname", with: @application_form.firstname
    fill_in "Lastname", with: @application_form.lastname
    fill_in "Phone", with: @application_form.phone
    fill_in "Shelter", with: @application_form.shelter_id
    fill_in "Status", with: @application_form.status
    click_on "Update Application form"

    assert_text "Application form was successfully updated"
    click_on "Back"
  end

  test "should destroy Application form" do
    visit application_form_url(@application_form)
    click_on "Destroy this application form", match: :first

    assert_text "Application form was successfully destroyed"
  end
end
