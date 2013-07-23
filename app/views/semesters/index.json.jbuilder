json.array!(@semesters) do |semester|
  json.extract! semester, :name, :start_date, :end_date
  json.url semester_url(semester, format: :json)
end
