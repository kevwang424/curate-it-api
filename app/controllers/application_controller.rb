class ApplicationController < ActionController::API

  def signed_in_user
    token = request.headers['HTTP_AUTHORIZATION']
    if token
      user_info = Auth.decode(token)
      @signed_in_user ||= User.find(user_info['user_id'])
    end
  end

end
