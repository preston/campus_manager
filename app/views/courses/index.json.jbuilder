json.array!(@courses) do |course|
  json.extract! course, :room_id, :semester_id, :name, :description
  json.url course_url(course, format: :json)
end
