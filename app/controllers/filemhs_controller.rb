class FilemhsController < ApplicationController
  before_action :authenticate_mahasiswa!
  before_action :set_filemh, only: [:show, :edit, :update, :destroy]

  # GET /filemhs
  # GET /filemhs.json
  def index
    @filemhs = Filemh.all
  end

  # GET /filemhs/1
  # GET /filemhs/1.json
  def show
  end

  # GET /filemhs/new
  def new
    @filemh = Filemh.new
  end

  # GET /filemhs/1/edit
  def edit
  end

  # POST /filemhs
  # POST /filemhs.json
  def create
    @filemh = Filemh.new(filemh_params)

    respond_to do |format|
      if @filemh.save
        format.html { redirect_to @filemh, notice: 'Filemh was successfully created.' }
        format.json { render :show, status: :created, location: @filemh }
      else
        format.html { render :new }
        format.json { render json: @filemh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filemhs/1
  # PATCH/PUT /filemhs/1.json
  def update
    respond_to do |format|
      if @filemh.update(filemh_params)
        format.html { redirect_to @filemh, notice: 'Filemh was successfully updated.' }
        format.json { render :show, status: :ok, location: @filemh }
      else
        format.html { render :edit }
        format.json { render json: @filemh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filemhs/1
  # DELETE /filemhs/1.json
  def destroy
    @filemh.destroy
    respond_to do |format|
      format.html { redirect_to filemhs_url, notice: 'Filemh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filemh
      @filemh = Filemh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filemh_params
      params.require(:filemh).permit(:id_bimbingan, :nim, :nama, :judul)
    end
end
