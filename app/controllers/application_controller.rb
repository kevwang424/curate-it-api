class ApplicationController < ActionController::API

  def current_user
    token = request.headers['HTTP_AUTHORIZATION']
    if token
      user_info = Auth.decode(token)
      @current_user ||= User.find(user_info['user_id'])
    end
  end

end
