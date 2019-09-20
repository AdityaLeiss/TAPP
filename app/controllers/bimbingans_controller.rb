class BimbingansController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bimbingan, only: [:show, :edit, :update, :destroy]

  # GET /bimbingans
  # GET /bimbingans.json
  def index
    @bimbingans = Bimbingan.all
  end

  # GET /bimbingans/1
  # GET /bimbingans/1.json
  def show
  end

  # GET /bimbingans/new
  def new
    @bimbingan = Bimbingan.new
  end

  # GET /bimbingans/1/edit
  def edit
  end

  # POST /bimbingans
  # POST /bimbingans.json
  def create
    @bimbingan = Bimbingan.new(bimbingan_params)

    respond_to do |format|
      if @bimbingan.save
        format.html { redirect_to @bimbingan, notice: 'Bimbingan was successfully created.' }
        format.json { render :show, status: :created, location: @bimbingan }
      else
        format.html { render :new }
        format.json { render json: @bimbingan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bimbingans/1
  # PATCH/PUT /bimbingans/1.json
  def update
    respond_to do |format|
      if @bimbingan.update(bimbingan_params)
        format.html { redirect_to @bimbingan, notice: 'Bimbingan was successfully updated.' }
        format.json { render :show, status: :ok, location: @bimbingan }
      else
        format.html { render :edit }
        format.json { render json: @bimbingan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bimbingans/1
  # DELETE /bimbingans/1.json
  def destroy
    @bimbingan.destroy
    respond_to do |format|
      format.html { redirect_to bimbingans_url, notice: 'Bimbingan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bimbingan
      @bimbingan = Bimbingan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bimbingan_params
      params.require(:bimbingan).permit(:nama,:judul,:dosen,:nip,:idb,:nim)
    end
end
