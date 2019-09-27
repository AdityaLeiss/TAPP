class HdosensController < ApplicationController
    before_action :authenticate_mdosen!
    before_action :set_bab, only: [:show, :edit, :update, :destroy]

    # GET /babs
    # GET /babs.json
    def index
      @zhilka = params[:nim]

      @hdosens = Bab.where(nim: @zhilka)
    # @hdosens = Bab.select{|b| b.nim == @zhilka}
      #  @hdosens = Bab.find(params[:nim])
      #  rescue ActiveRecord::RecordNotFound
      #  flash[:notice] = "Kosong"
      #  redirect_to bimdosens_path
    end

    # GET /babs/1
    # GET /babs/1.json
    def show
        @hdosen = Bab.find(params[:id])
    end

    # GET /babs/new
    def new
      @hdosen = Bab.new
    end

    # GET /babs/1/edit
    def edit
    end

    # POST /babs
    # POST /babs.json
    def create
      @hdosen = Bab.new(bab_params)
        @hdosen.pdf.attach(params[:bab][:pdf])
      respond_to do |format|
        if @hdosen.save
          format.html { redirect_to @hdosen, notice: 'Bab was successfully created.' }
          format.json { render :show, status: :created, location: @bab }
        else
          format.html { render :new }
          format.json { render json: @hdosen.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /babs/1
    # PATCH/PUT /babs/1.json
    def update
      respond_to do |format|
        if @hdosen.update(bab_params)
          format.html { redirect_to hdosen_path(@hdosen), notice: 'Bab was successfully updated.' }
          format.json { render :show, status: :ok, location: @bab }
        else
          format.html { render :edit }
          format.json { render json: @hdosen.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /babs/1
    # DELETE /babs/1.json
    def destroy
      @hdosen.destroy
      respond_to do |format|
        format.html { redirect_to hdosens_url, notice: 'Bab was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_bab
        @hdosen = Bab.find(params[:id])
      
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def bab_params
        params.require(:bab).permit(:nim, :nama,:pdf, :bab,:progress)
      end

end
