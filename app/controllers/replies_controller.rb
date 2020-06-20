class RepliesController < ApplicationController
  before_action :set_reply, only: [:show, :edit, :update, :destroy]

  # GET /replies
  # GET /replies.json
  def index
    @replies = Reply.all
  end

  # GET /replies/1
  # GET /replies/1.json
  def show
  end

  # GET /replies/new
  def new
    #@event = Event.find(params[:event_id])
    @comment = Comment.find(params[:comment_id])
    @user = User.first
    @reply = Reply.new
  end

  # GET /replies/1/edit
  def edit
  end

  # POST /replies
  # POST /replies.json
  def create
    @reply = Reply.new(reply_params)

    respond_to do |format|
      if @reply.save
        @event = @reply.comment.event
        format.html { redirect_to @event, notice: 'Reply was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /replies/1
  # PATCH/PUT /replies/1.json
  def update
    respond_to do |format|
      if @reply.update(reply_params)
        format.html { redirect_to @reply, notice: 'Reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @reply }
      else
        format.html { render :edit }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replies/1
  # DELETE /replies/1.json
  def destroy
    @event = @reply.comment.event
    @reply.destroy
    respond_to do |format|
      format.html { redirect_to @event, notice: 'Reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @reply = Reply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reply_params
      params.fetch(:reply, {}).permit(:user_id, :comment_id, :message)
    end
end
