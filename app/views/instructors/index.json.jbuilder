json.array!(@instructors) do |instructor|
  json.extract! instructor, :user_id, :course_id
  json.url instructor_url(instructor, format: :json)
end
