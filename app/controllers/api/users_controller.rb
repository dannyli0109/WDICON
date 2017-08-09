class Api::UsersController < ApplicationController
    include UsersHelper
    def current_user

        render json: User.find(session[:user_id])
    end


    def user_by_name
      json = {}
      if (params["name"])
        render json: User.where(name: params["name"].capitalize)[0]
      end
    end




end
