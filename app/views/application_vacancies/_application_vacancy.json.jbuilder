json.extract! application_vacancy, :id, :user_id, :vacancy_id, :created_at, :updated_at
json.url application_vacancy_url(application_vacancy, format: :json)
