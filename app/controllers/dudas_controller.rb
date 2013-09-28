class DudasController < ApplicationController
  before_action :set_duda, only: [:show, :edit, :update, :destroy]

  # GET /dudas
  # GET /dudas.json
  def index
    @dudas = Duda.all
  end

  # GET /dudas/1
  # GET /dudas/1.json
  def show
  end

  # GET /dudas/new
  def new
    @duda = Duda.new
  end

  # GET /dudas/1/edit
  def edit
  end

  # POST /dudas
  # POST /dudas.json
  def create
    @duda = Duda.new(duda_params)

    respond_to do |format|
      if @duda.save
        format.html { redirect_to @duda, notice: 'Duda was successfully created.' }
        format.json { render action: 'show', status: :created, location: @duda }
      else
        format.html { render action: 'new' }
        format.json { render json: @duda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dudas/1
  # PATCH/PUT /dudas/1.json
  def update
    respond_to do |format|
      if @duda.update(duda_params)
        format.html { redirect_to @duda, notice: 'Duda was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @duda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dudas/1
  # DELETE /dudas/1.json
  def destroy
    @duda.destroy
    respond_to do |format|
      format.html { redirect_to dudas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duda
      @duda = Duda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duda_params
      params.require(:duda).permit(:ngaa)
    end
end
