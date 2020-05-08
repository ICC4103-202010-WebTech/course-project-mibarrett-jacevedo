class API::V1::CommentsController < APIController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    #@comments = Comment.all
    @comments = Comment.where(event_id: params[:event_id]) #fuera del API esta distinto
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    #@comment = Comment.find(params[:id])
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user = User.find(params[:user_id])
    @comment.event = Event.find(params[:event_id])

    #respond_to do |format|
    if @comment.save
      #format.html { redirect_to @event, notice: 'Event was successfully created.' }
      #format.json { render :show, status: :created, location: @event }
      render :show, status: :created, location: @event
    else
      #format.html { render :new }
      #format.json { render json: @event.errors, status: :unprocessable_entity }
      render json: @event.errors, status: :unprocessable_entity
    end
      #end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    if @comment.update(comment_params)
      render :show, status: :ok, location: api_v1_event_comments_url(@comment)
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
    #respond_to do |format|
    # if @comment.update(comment_params)
        #format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        #format.json { render :show, status: :ok, location: @comment }
    # else
    #   format.html { render :edit }
    #   format.json { render json: @comment.errors, status: :unprocessable_entity }
    # end
    #end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    head :no_content
    puts ('The event was deleted succesfully!')
    #respond_to do |format|
    # format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
    # format.json { head :no_content }
    #end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    #params.fetch(:comment, {})
    params.fetch(:comment, {}).permit(:id, :user, :event, :message)
  end
end
