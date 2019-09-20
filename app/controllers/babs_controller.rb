class BabsController < ApplicationController
  before_action :authenticate_mahasiswa!
  before_action :set_bab, only: [:show, :edit, :update, :destroy]

  # GET /babs
  # GET /babs.json
  def index
    @bimbas = Bimbingan.where(nim: current_mahasiswa.nim)
    @babs = Bab.all
  end

  # GET /babs/1
  # GET /babs/1.json
  def show
  end

  # GET /babs/new
  def new
    @bab = Bab.new
  end

  # GET /babs/1/edit
  def edit
  end

  # POST /babs
  # POST /babs.json
  def create
    @bab = Bab.new(bab_params)
      @bab.pdf.attach(params[:bab][:pdf])
    respond_to do |format|
      if @bab.save
        format.html { redirect_to @bab, notice: 'Bab was successfully created.' }
        format.json { render :show, status: :created, location: @bab }
      else
        format.html { render :new }
        format.json { render json: @bab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /babs/1
  # PATCH/PUT /babs/1.json
  def update
    respond_to do |format|
      if @bab.update(bab_params)
        format.html { redirect_to @bab, notice: 'Bab was successfully updated.' }
        format.json { render :show, status: :ok, location: @bab }
      else
        format.html { render :edit }
        format.json { render json: @bab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babs/1
  # DELETE /babs/1.json
  def destroy
    @bab.destroy
    respond_to do |format|
      format.html { redirect_to babs_url, notice: 'Bab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bab
      @bab = Bab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bab_params
      params.require(:bab).permit(:nim, :nama,:pdf, :bab,:progress)
    end
end
