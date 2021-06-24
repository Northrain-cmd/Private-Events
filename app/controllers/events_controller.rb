class EventsController < ApplicationController
  before_action :authenticate_user!
  def new
    @event = Event.new(price: 0)
  end

  def create
    @user = User.find(current_user.id)
    @event = @user.organized_events.build(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :location, :finish_date, :price)
  end
end
