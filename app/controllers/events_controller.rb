class EventsController < ApplicationController
  def index
    @events = Event.all 
    render json: @events
  end

  def create
   @event = Event.create(event_params)
   render json: @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: @event
  end 
end



private

def event_params
   params.permit(:title,:location,:date,:headcount,:time,:img,:user_id)
end

