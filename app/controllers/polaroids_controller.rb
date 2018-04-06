class PolaroidsController < ApplicationController
  before_action :set_polaroid, only: [:show, :edit, :update, :destroy]
  layout "polaroid"
  # GET /polaroids
  # GET /polaroids.json
  def index
    @polaroids = Polaroid.all
  end

  # GET /polaroids/1
  # GET /polaroids/1.json
  def show
  end

  # GET /polaroids/new
  def new
    @polaroid = Polaroid.new
  end

  # GET /polaroids/1/edit
  def edit
  end

  # POST /polaroids
  # POST /polaroids.json
  def create
    @polaroid = Polaroid.new(polaroid_params)

    respond_to do |format|
      if @polaroid.save
        format.html { redirect_to @polaroid, notice: 'Polaroid was successfully created.' }
        format.json { render :show, status: :created, location: @polaroid }
      else
        format.html { render :new }
        format.json { render json: @polaroid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polaroids/1
  # PATCH/PUT /polaroids/1.json
  def update
    respond_to do |format|
      if @polaroid.update(polaroid_params)
        format.html { redirect_to @polaroid, notice: 'Polaroid was successfully updated.' }
        format.json { render :show, status: :ok, location: @polaroid }
      else
        format.html { render :edit }
        format.json { render json: @polaroid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polaroids/1
  # DELETE /polaroids/1.json
  def destroy
    @polaroid.destroy
    respond_to do |format|
      format.html { redirect_to polaroids_url, notice: 'Polaroid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polaroid
      @polaroid = Polaroid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def polaroid_params
      params.require(:polaroid).permit(:caption, :image)
    end
end
