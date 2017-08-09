class SessionController < ApplicationController
  include UsersHelper

  def new


  end

  def create
    user = User.find_by( email: params[:email] )
    if user
      success = user.authenticate(params[:password])
      if success
        session[:user_id] = user.id
        redirect_to "/users/#{user.id}/dashboard"
      else
        session[:error] = "An error occurred. Please check your login credentials and try again."
        redirect_to "/login"
      end
    else
      session[:error] = "An error occurred. Please check your login credentials and try again."
      redirect_to "/login"
    end
  end
end
