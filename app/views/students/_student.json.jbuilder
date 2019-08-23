json.extract! student, :id, :nim, :nama, :email, :username, :password, :status, :created_at, :updated_at
json.url student_url(student, format: :json)
