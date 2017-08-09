class Api::UsersController < ApplicationController
    include UsersHelper
    def current_user
        render json: User.find(session[:user_id])
    end




end
