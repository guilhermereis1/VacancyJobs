json.extract! vacancy, :id, :name, :content, :category_id, :salary, :created_at, :updated_at
json.url vacancy_url(vacancy, format: :json)
