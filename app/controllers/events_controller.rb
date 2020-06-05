class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.search(params[:search])
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    #@organization = Organization.where(events: @event)
    @event_comments = @event.comments
    @organization = @user.organization
    @guests = @event.event_guests
    @date_options = @event.event_options
  end

  # GET /events/new
  def new
    @user = User.first
    @organization = @user.organization
    @event = Event.new
    @event.event_options.build
  end

  # GET /events/1/edit
  def edit
    #@event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.fetch(:event, {}).permit(:id, :user_id, :title, :description, :location, :picture, event_options_attributes: [:id, :day, :_destroy], comments_attributes: [:id, :user_id, :message, :_destroy], event_organization_attributes: [:organization_id])
    end
end
