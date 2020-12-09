class CashmastersController < ApplicationController
  before_action :set_cashmaster, only: [:show, :edit, :update, :destroy]

  # GET /cashmasters
  # GET /cashmasters.json
  def index
    @cashmasters = Cashmaster.all
  end

  # GET /cashmasters/1
  # GET /cashmasters/1.json
  def show
  end

  # GET /cashmasters/new
  def new
    @cashmaster = Cashmaster.new
  end

  # GET /cashmasters/1/edit
  def edit
  end

  # POST /cashmasters
  # POST /cashmasters.json
  def create
    @cashmaster = Cashmaster.new(cashmaster_params)

    respond_to do |format|
      if @cashmaster.save
        format.html { redirect_to @cashmaster, notice: 'Cashmaster was successfully created.' }
        format.json { render :show, status: :created, location: @cashmaster }
      else
        format.html { render :new }
        format.json { render json: @cashmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashmasters/1
  # PATCH/PUT /cashmasters/1.json
  def update
    respond_to do |format|
      if @cashmaster.update(cashmaster_params)
        format.html { redirect_to @cashmaster, notice: 'Cashmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashmaster }
      else
        format.html { render :edit }
        format.json { render json: @cashmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashmasters/1
  # DELETE /cashmasters/1.json
  def destroy
    @cashmaster.destroy
    respond_to do |format|
      format.html { redirect_to cashmasters_url, notice: 'Cashmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashmaster
      @cashmaster = Cashmaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cashmaster_params
      params.require(:cashmaster).permit(:name, :price, :comments, 
           cashdetails_attributes:[:id, :itemname, :qty, :rate, :_destroy])
    end
end
