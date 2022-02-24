Rails.application.routes.draw do
  root 'application#hello'

  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth',  controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
    end
  end
end