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
        if @user.id == current_user.id
            @user.update(user_params)
        end
        unless @user.save
        render action: :edit
        end 
    end


    private
    def user_params
       params.require(:user).permit(:image,:name,:text,:link)         #.merge(user_id: current_user.id)
    end
end



