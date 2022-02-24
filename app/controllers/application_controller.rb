class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :authenticate_user!, except: [:hello]

  def deep_underscore_params!(app_params = params)
    HashTransformer.snake_case(app_params, mutable: true)
  end

  def hello
    render json: { message: 'Hello Human' }, status: :ok
  end
end
