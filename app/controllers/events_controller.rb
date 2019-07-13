class EventsController < ApplicationController
    before_action :move_to_index, except: [:index, :show]
    
     def index
        @events = Event.includes(:user).order("created_at DESC ").page(params[:page]).per(10)
     end
  
    def new
        @event=Event.new
    end
    
    def create
        @event=Event.create(create_params)
        grooping_list = params[:grooping_list].split(",")
        if @event.save
            @event.save_groopings(grooping_list)
            redirect_to events_url
        else
            render action:new
        end
        #unless @event.save
        #render action: :new
        #end
    end 
    
    def destroy
        event = Event.find(params[:id])
        event.destroy if event.user_id == current_user.id
    end
    
    def edit
        @event = find_event_by_id
        
    end
    
    def update
        @event = Event.find(params[:id])
        if @event.user_id == current_user.id
            @event.update(create_params)
        end
        unless @event.save
        render action: :edit
        end
    end
    
    
    def show
        @event = find_event_by_id
        @user = User.find_by(id: @event.user_id)  #event詳細ページにuser情報表示できるようにひもづけ
       
    end
    
    private
    def create_params
        params.require(:event).permit(:image,:name,:place,:text,:scedule,:link).merge(user_id: current_user.id)

    end
    
    def find_event_by_id
        Event.find(params[:id])
    end
    
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end
end
