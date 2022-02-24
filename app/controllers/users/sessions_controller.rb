class Users::SessionsController < DeviseTokenAuth::SessionsController
  wrap_parameters format: []

  def render_create_success
    render json: @resource.as_json(User::RESPONSE), status: :ok
  end

  def render_create_error
    render json: @resource.as_json(@resource.errors), status: :unprocessable_entity
  end
end