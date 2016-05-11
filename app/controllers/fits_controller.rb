class FitsController < ApplicationController
  before_action :set_fit, only: [:show, :edit, :update, :destroy]

  # GET /fits
  # GET /fits.json
  def index
    @fits = Fit.all
  end

  # GET /fits/1
  # GET /fits/1.json
  def show
  end

  # GET /fits/new
  def new
    @fit = Fit.new
  end

  # GET /fits/1/edit
  def edit
  end

  # POST /fits
  # POST /fits.json
  def create
    @fit = Fit.new(fit_params)

    respond_to do |format|
      if @fit.save
        format.html { redirect_to @fit, notice: 'Fit was successfully created.' }
        format.json { render :show, status: :created, location: @fit }
      else
        format.html { render :new }
        format.json { render json: @fit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fits/1
  # PATCH/PUT /fits/1.json
  def update
    respond_to do |format|
      if @fit.update(fit_params)
        format.html { redirect_to @fit, notice: 'Fit was successfully updated.' }
        format.json { render :show, status: :ok, location: @fit }
      else
        format.html { render :edit }
        format.json { render json: @fit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fits/1
  # DELETE /fits/1.json
  def destroy
    @fit.destroy
    respond_to do |format|
      format.html { redirect_to fits_url, notice: 'Fit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fit
      @fit = Fit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fit_params
      params.require(:fit).permit(:title, :description)
    end
end
