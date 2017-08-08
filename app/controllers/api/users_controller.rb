class Api::UsersController < ApplicationController
    include UsersHelper
    def current_user
        
        render json: {"name": "David"}
    end




end
