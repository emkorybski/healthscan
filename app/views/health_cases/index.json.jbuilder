json.array!(@health_cases) do |health_case|
  json.extract! health_case, :id, :description, :user_id
  json.url health_case_url(health_case, format: :json)
end
