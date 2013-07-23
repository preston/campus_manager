json.array!(@lessons) do |lesson|
  json.extract! lesson, :course_id, :name, :description
  json.url lesson_url(lesson, format: :json)
end
