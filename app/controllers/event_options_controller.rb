class EventOptionsController < ApplicationController
  before_action :set_event_option, only: [:show, :edit, :update, :destroy]

  # GET /event_options
  # GET /event_options.json
  def index
    @event_options = EventOption.all
  end

  # GET /event_options/1
  # GET /event_options/1.json
  def show
  end

  # GET /event_options/new
  def new
    @event = Event.find(params[:event_id])
    @event_option = EventOption.new
  end

  # GET /event_options/1/edit
  def edit
  end

  # POST /event_options
  # POST /event_options.json
  def create
    @event = Event.find(params[:event_id])
    @event_option = EventOption.new(event_option_params)
    @event_option.event = @event
    respond_to do |format|
      if @event_option.save
        format.html { redirect_to  @event, notice: 'Event option was successfully created.' }
        format.json { render :show, status: :created, location: @event_option }
      else
        format.html { render :new }
        format.json { render json: @event_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_options/1
  # PATCH/PUT /event_options/1.json
  def update
    respond_to do |format|
      if @event_option.update(event_option_params)
        format.html { redirect_to @event_option, notice: 'Event option was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_option }
      else
        format.html { render :edit }
        format.json { render json: @event_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_options/1
  # DELETE /event_options/1.json
  def destroy
    @event_option.destroy
    respond_to do |format|
      format.html { redirect_to event_options_url, notice: 'Event option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_option
      @event_option = EventOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_option_params
      params.fetch(:event_option, {}).permit( :day, :event_id)
    end
end
