class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController

  def render_create_success
    render json: @resource.as_json(User::RESPONSE), status: :ok
  end

  def render_create_error
    render json: @resource.as_json(@resource.errors), status: :unprocessable_entity
  end
end