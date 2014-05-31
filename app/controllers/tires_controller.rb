class TiresController < ApplicationController
  before_action :set_tire, only: [:show, :edit, :update, :destroy]

  # GET /tires
  # GET /tires.json
  def index
    @tires = Tire.all
  end

  # GET /tires/1
  # GET /tires/1.json
  def show
  end

  # GET /tires/new
  def new
    @tire = Tire.new
  end

  # GET /tires/1/edit
  def edit
  end

  # POST /tires
  # POST /tires.json
  def create
    @tire = Tire.new(tire_params)

    respond_to do |format|
      if @tire.save
        format.html { redirect_to @tire, notice: 'Tire was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tire }
      else
        format.html { render action: 'new' }
        format.json { render json: @tire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tires/1
  # PATCH/PUT /tires/1.json
  def update
    respond_to do |format|
      if @tire.update(tire_params)
        format.html { redirect_to @tire, notice: 'Tire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tires/1
  # DELETE /tires/1.json
  def destroy
    @tire.destroy
    respond_to do |format|
      format.html { redirect_to tires_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tire
      @tire = Tire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tire_params
      params.require(:tire).permit(:brand_id, :size, :tire_type, :pattern_id, :year, :week, :summary, :price)
    end
end
