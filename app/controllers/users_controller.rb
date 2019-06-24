class UsersController < ApplicationController
    def show
        @name=current_user.name
        @events= Events.where(user_id: current_user.id).page(params[:page]).per(10).oreder(created_at_DESC)
    end
end
