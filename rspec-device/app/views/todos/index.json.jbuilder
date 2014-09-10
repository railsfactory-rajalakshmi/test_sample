json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :details, :start_data, :expire_date, :completed_status
  json.url todo_url(todo, format: :json)
end
