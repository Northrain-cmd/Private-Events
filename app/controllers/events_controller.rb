class EventsController < ApplicationController
  before_action :authenticate_user!
  def new
    @event = Event.new(price: 0)
  end

  def create
    @user = User.find(current_user.id)
    @event = @user.organized_events.build(event_params)
    if @event.save
      redirect_to events_path(@event)
    else
      render :new
    end
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :finish_date, :price)
  end
end
