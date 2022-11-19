class CastfilmsController < ApplicationController
  before_action :set_castfilm, only: %i[ show edit update destroy ]

  # GET /castfilms or /castfilms.json
  def index
    @castfilms = Castfilm.all
  end

  # GET /castfilms/1 or /castfilms/1.json
  def show
  end

  # GET /castfilms/new
  def new
    @castfilm = Castfilm.new
  end

  # GET /castfilms/1/edit
  def edit
  end

  # POST /castfilms or /castfilms.json
  def create
    @castfilm = Castfilm.new(castfilm_params)

    respond_to do |format|
      if @castfilm.save
        format.html { redirect_to castfilm_url(@castfilm), notice: "Castfilm was successfully created." }
        format.json { render :show, status: :created, location: @castfilm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @castfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /castfilms/1 or /castfilms/1.json
  def update
    respond_to do |format|
      if @castfilm.update(castfilm_params)
        format.html { redirect_to castfilm_url(@castfilm), notice: "Castfilm was successfully updated." }
        format.json { render :show, status: :ok, location: @castfilm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @castfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castfilms/1 or /castfilms/1.json
  def destroy
    @castfilm.destroy

    respond_to do |format|
      format.html { redirect_to castfilms_url, notice: "Castfilm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castfilm
      @castfilm = Castfilm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def castfilm_params
      params.require(:castfilm).permit(:author_id, :film_id)
    end
end
