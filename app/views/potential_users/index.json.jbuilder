json.array!(@potential_users) do |potential_user|
  json.extract! potential_user, :id, :email, :first_name, :gender
  json.url potential_user_url(potential_user, format: :json)
end
