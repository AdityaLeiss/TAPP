json.extract! dosen, :id, :nip, :nama, :email, :username, :password, :created_at, :updated_at
json.url dosen_url(dosen, format: :json)
