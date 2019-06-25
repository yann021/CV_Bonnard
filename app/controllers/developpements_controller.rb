class DeveloppementsController < ApplicationController
  before_action :set_developpement, only: [:show, :edit, :update, :destroy]

  # GET /developpements
  # GET /developpements.json
  def index
    @developpements = Developpement.all
  end

  # GET /developpements/1
  # GET /developpements/1.json
  def show
  end

  # GET /developpements/new
  def new
    @developpement = Developpement.new
  end

  # GET /developpements/1/edit
  def edit
  end

  # POST /developpements
  # POST /developpements.json
  def create
    @developpement = Developpement.new(developpement_params)

    respond_to do |format|
      if @developpement.save
        format.html { redirect_to @developpement, notice: 'Developpement was successfully created.' }
        format.json { render :show, status: :created, location: @developpement }
      else
        format.html { render :new }
        format.json { render json: @developpement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developpements/1
  # PATCH/PUT /developpements/1.json
  def update
    respond_to do |format|
      if @developpement.update(developpement_params)
        format.html { redirect_to @developpement, notice: 'Developpement was successfully updated.' }
        format.json { render :show, status: :ok, location: @developpement }
      else
        format.html { render :edit }
        format.json { render json: @developpement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developpements/1
  # DELETE /developpements/1.json
  def destroy
    @developpement.destroy
    respond_to do |format|
      format.html { redirect_to developpements_url, notice: 'Developpement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developpement
      @developpement = Developpement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developpement_params
      params.require(:developpement).permit(:title, :developmentDate, :website, :description, :type)
    end
end
