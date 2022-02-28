if Rails.env.development?
  Administrator.find_or_create_by!(email: 'admin@example.com') do |user|
    user.first_name = 'Admin'
    user.first_name = 'User'
    user.password = 'password'
  end
end