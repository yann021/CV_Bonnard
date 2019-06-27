class DevelopementsController < ApplicationController
  before_action :set_developement, only: [:show, :edit, :update, :destroy]

  # GET /developements
  # GET /developements.json
  def index
    @developements = Developement.all
  end

  # GET /developements/1
  # GET /developements/1.json
  def show
  end

  # GET /developements/new
  def new
    @developement = Developement.new
  end

  # GET /developements/1/edit
  def edit
  end

  # POST /developements
  # POST /developements.json
  def create
    @developement = Developement.new(developement_params)

    respond_to do |format|
      if @developement.save
        format.html { redirect_to @developement, notice: 'Developement was successfully created.' }
        format.json { render :show, status: :created, location: @developement }
      else
        format.html { render :new }
        format.json { render json: @developement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developements/1
  # PATCH/PUT /developements/1.json
  def update
    respond_to do |format|
      if @developement.update(developement_params)
        format.html { redirect_to @developement, notice: 'Developement was successfully updated.' }
        format.json { render :show, status: :ok, location: @developement }
      else
        format.html { render :edit }
        format.json { render json: @developement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developements/1
  # DELETE /developements/1.json
  def destroy
    @developement.destroy
    respond_to do |format|
      format.html { redirect_to developements_url, notice: 'Developement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developement
      @developement = Developement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developement_params
      params.require(:developement).permit(:title, :developmentDate, :website, :description, :mtype)
    end
end
