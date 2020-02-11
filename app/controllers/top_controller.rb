class TopController < ApplicationController
    def index
          @events = Event.includes(:user).search(params[:search]).order("created_at DESC ").page(params[:page]).per(10)
        @events = Event.includes(:user).search(params[:search1]).order("created_at DESC ").page(params[:page]).per(10)
    end
    
    def new
    end
end
