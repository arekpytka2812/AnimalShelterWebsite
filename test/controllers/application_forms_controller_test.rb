require "test_helper"

class ApplicationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_form = application_forms(:one)
  end

  test "should get index" do
    get application_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_application_form_url
    assert_response :success
  end

  test "should create application_form" do
    assert_difference("ApplicationForm.count") do
      post application_forms_url, params: { application_form: { animal_id: @application_form.animal_id, email: @application_form.email, firstname: @application_form.firstname, lastname: @application_form.lastname, phone: @application_form.phone, shelter_id: @application_form.shelter_id, status: @application_form.status } }
    end

    assert_redirected_to application_form_url(ApplicationForm.last)
  end

  test "should show application_form" do
    get application_form_url(@application_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_form_url(@application_form)
    assert_response :success
  end

  test "should update application_form" do
    patch application_form_url(@application_form), params: { application_form: { animal_id: @application_form.animal_id, email: @application_form.email, firstname: @application_form.firstname, lastname: @application_form.lastname, phone: @application_form.phone, shelter_id: @application_form.shelter_id, status: @application_form.status } }
    assert_redirected_to application_form_url(@application_form)
  end

  test "should destroy application_form" do
    assert_difference("ApplicationForm.count", -1) do
      delete application_form_url(@application_form)
    end

    assert_redirected_to application_forms_url
  end
end
