class ViewviewsController < ApplicationController
    before_action :authenticate_super!
    before_action :set_view, only: [:show, :edit, :update, :destroy]
    # GET /views
    # GET /views.json
    def index
      @views = Admin.all
    end

    # GET /views/1
    # GET /views/1.json
    def show
    end

    # GET /views/new
    def new
      @view = Admin.new
    end

    # GET /views/1/edit
    def edit
    end

    # POST /views
    # POST /views.json
    def create
      @view = Admin.new(view_params)

      respond_to do |format|
        if @view.save
          format.html { redirect_to @view, notice: 'Admin was successfully created.' }
          format.json { render :show, status: :created, location: @view }
        else
          format.html { render :new }
          format.json { render json: @view.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /views/1
    # PATCH/PUT /views/1.json
    def update
      respond_to do |format|
        if @view.update(view_params)
          format.html { redirect_to @view, notice: 'Admin was successfully updated.' }
          format.json { render :show, status: :ok, location: @view }
        else
          format.html { render :edit }
          format.json { render json: @view.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /views/1
    # DELETE /views/1.json
    def destroy
      @view.destroy

      respond_to do |format|
        format.html { redirect_to views_url, notice: 'Admin was successfully destroyed.' }
        format.json { head :no_content }

      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_view
        @view = Admin.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def view_params
        params.require(:view).permit(:nama, :username, :password)
      end
  end
