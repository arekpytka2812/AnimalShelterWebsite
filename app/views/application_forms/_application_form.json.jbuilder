json.extract! application_form, :id, :firstname, :lastname, :email, :phone, :status, :animal_id, :shelter_id, :created_at, :updated_at
json.url application_form_url(application_form, format: :json)
