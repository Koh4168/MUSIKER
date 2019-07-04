class UsersController < ApplicationController
    def show
        @user= User.find(params[:id])
        @events= Event.where(user_id: @user.id).page(params[:page]).per(10)
    end
    
    def edit
        @user=User.find(params[:id])
    end
    
    def update
        @user=User.find(params[:id])
        @event = Event.find(params[:id]) #event内のuser_idを利用
        if @event.user_id == current_user.id　#event内のuser_idとusers内のidは同じ
            @user.update(user_params)
        end
        unless @user.save
        render action: :edit
        end 
    end
    
    private
    def user_params
       params.require(:user) .permit(:image,:name,:text,:link).merge(user_id: current_user.id)
    end
end
