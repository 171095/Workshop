json.extract! course_module, :id, :name, :description, :course_id, :created_at, :updated_at
json.url course_module_url(course_module, format: :json)
