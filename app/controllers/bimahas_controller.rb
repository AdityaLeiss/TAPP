class BimahasController < ApplicationController
  before_action :authenticate_mahasiswa!
  before_action :set_bimdosen, only: [:show, :edit, :update, :destroy]

  # GET /bimdosens
  # GET /bimdosens.json
  def index
    @bimdosens = Bimbingan.where(nip: current_mdosen.nip)
  end

  # GET /bimdosens/1
  # GET /bimdosens/1.json
  def show
    @bimdosen = Bimbingan.find(params[:id])
  end

  # GET /bimdosens/new
  def new
    @bimdosen = Bimbingan.new
  end

  # GET /bimdosens/1/edit
  def edit
  end

  # POST /bimdosens
  # POST /bimdosens.json
  def create
    @bimdosen = Bimbingan.new(bimdosen_params)

    respond_to do |format|
      if @bimdosen.save
        format.html { redirect_to @bimdosen, notice: 'Bimbingan was successfully created.' }
        format.json { render :show, status: :created, location: @bimdosen }
      else
        format.html { render :new }
        format.json { render json: @bimdosen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bimdosens/1
  # PATCH/PUT /bimdosens/1.json
  def update
    respond_to do |format|
      if @bimdosen.update(bimdosen_params)
        format.html { redirect_to @bimdosen, notice: 'Bimbingan was successfully updated.' }
        format.json { render :show, status: :ok, location: @bimdosen }
      else
        format.html { render :edit }
        format.json { render json: @bimdosen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bimdosens/1
  # DELETE /bimdosens/1.json
  def destroy
    @bimdosen.destroy
    respond_to do |format|
      format.html { redirect_to bimdosens_url, notice: 'Bimbingan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bimdosen
      @bimdosen = Bimbingan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bimdosen_params
      params.require(:bimdosen).permit(:nama,:judul,:dosen,:nip,:idb,:nim)
    end
end
