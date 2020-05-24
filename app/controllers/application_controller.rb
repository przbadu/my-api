class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def not_found
    render json: { error: 'not_found' }
  end

  def authenticate_user!
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JwtService.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end

  def auth_response(user)
    token = JwtService.encode(user_id: user.id)
    time = Time.now + 24.hours.to_i
    render json: {
      token: token,
      exp: time.strftime("%m-%d-%Y %H:%M"),
      username: user.username,
      name: user.name,
      email: user.email
    }, status: :ok
  end

  def pagination_meta(object)
    {
      limit_value: object.limit_value,
      total_pages: object.total_pages,
      current_page: object.current_page,
      next_page: object.next_page,
      prev_page: object.prev_page,
      total_count: object.total_count
    }    
  end
end
