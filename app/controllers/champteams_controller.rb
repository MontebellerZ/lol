class ChampteamsController < ApplicationController
  before_action :set_champteam, only: [:show, :edit, :update, :destroy]

  # GET /champteams
  # GET /champteams.json
  def index
    @champteams = Champteam.all
  end

  # GET /champteams/1
  # GET /champteams/1.json
  def show
  end

  # GET /champteams/new
  def new
    @champteam = Champteam.new
  end

  # GET /champteams/1/edit
  def edit
  end

  # POST /champteams
  # POST /champteams.json
  def create
    @champteam = Champteam.new(champteam_params)

    respond_to do |format|
      if @champteam.save
        format.html { redirect_to @champteam, notice: 'Champteam was successfully created.' }
        format.json { render :show, status: :created, location: @champteam }
      else
        format.html { render :new }
        format.json { render json: @champteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /champteams/1
  # PATCH/PUT /champteams/1.json
  def update
    respond_to do |format|
      if @champteam.update(champteam_params)
        format.html { redirect_to @champteam, notice: 'Champteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @champteam }
      else
        format.html { render :edit }
        format.json { render json: @champteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /champteams/1
  # DELETE /champteams/1.json
  def destroy
    @champteam.destroy
    respond_to do |format|
      format.html { redirect_to champteams_url, notice: 'Champteam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champteam
      @champteam = Champteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def champteam_params
      params.require(:champteam).permit(:team_id, :championship_id)
    end
end
