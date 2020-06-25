class EventVotesController < ApplicationController
  before_action :set_event_vote, only: [:show, :edit, :update, :destroy]

  # GET /event_votes
  # GET /event_votes.json
  def index
    @event_votes = EventVote.all
  end

  # GET /event_votes/1
  # GET /event_votes/1.json
  def show
  end

  # GET /event_votes/new
  def new
    @event_option = EventOption.find(params[:event_option_id])
    @event_vote = EventVote.new
  end

  # GET /event_votes/1/edit
  def edit
  end

  # POST /event_votes
  # POST /event_votes.json
  def create
    @event_vote = EventVote.new(event_vote_params)

    respond_to do |format|
      if @event_vote.save
        @event = @event_vote.event_option.event
        format.html { redirect_to @event, notice: 'Event vote was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_votes/1
  # PATCH/PUT /event_votes/1.json
  def update
    respond_to do |format|
      if @event_vote.update(event_vote_params)
        format.html { redirect_to @event_vote, notice: 'Event vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_vote }
      else
        format.html { render :edit }
        format.json { render json: @event_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_votes/1
  # DELETE /event_votes/1.json
  def destroy
    @event_vote.destroy
    respond_to do |format|
      format.html { redirect_to event_votes_url, notice: 'Event vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_vote
      @event_vote = EventVote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_vote_params
      params.fetch(:event_vote, {}).permit(:event_option_id, :user_id)
    end
end
