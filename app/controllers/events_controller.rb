class EventsController < ApplicationController
    before_action :move_to_index, except: [:index, :show]
    
     def index
        @events = Event.includes(:user).order("created_at DESC ").page(params[:page]).per(10)
     end
  
    def new
        @event=Event.new
    end
    
    def create
        Event.create( name: event_params[:name], image: event_params[:image], place: event_params[:place],
                  price: event_params[:price], text: event_params[:text], scedule: event_params[:scedule],
                   link: event_params[:link],user_id: current_user.id )
    end 
    
    def destroy
        event = Event.find(params[:id])
        event.destroy if event.user_id == current_user.id
    end
    
    def edit
        @event = Event.find(params[:id])
    end
    
    def update
        event = Event.find(params[:id])
        if event.user_id == current_user.id
            event.update(event_params)
        end
    end
    
    def show
        @event = Event.find(params[:id])
    end
    
    private
    def event_params
        params.permit(:image,:name,:place,:price,:text,:scedule,:link)
    end
    
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end
end
