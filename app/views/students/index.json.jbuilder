json.array!(@students) do |student|
  json.extract! student, :user_id, :course_id
  json.url student_url(student, format: :json)
end
