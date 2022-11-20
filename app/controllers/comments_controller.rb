class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ap]
  before_action :set_films, only: %i[ new edit create update]


  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def approve
    @comment = Comment.find(params[:id])
    @comment.status = true
    respond_to do |format|
    if @comment.save
        @log = Log.new()
        @log.comment_id = @comment.id
        @log.save
    format.html { redirect_to comments_url, notice: "Comentário aprovado com sucesso." }
    format.json { head :no_content }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @film.errors, status: :unprocessable_entity }
    end
   end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    private
    def set_films
      @films = Film.all.pluck(:title, :id)
    end


    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:description, :status, :film_id, :comment_id)
    end

    
end
