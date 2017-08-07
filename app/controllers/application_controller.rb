class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    module UsersHelper
    def current_user
      session[:user_id]
    end
  end
end
