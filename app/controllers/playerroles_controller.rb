class PlayerrolesController < ApplicationController
  before_action :set_playerrole, only: [:show, :edit, :update, :destroy]

  # GET /playerroles
  # GET /playerroles.json
  def index
    @playerroles = Playerrole.all
    @players = Player.all
    @roles = Role.all
    @playerrole = Playerrole.new
  end

  # GET /playerroles/1
  # GET /playerroles/1.json
  def show
    @players = Player.all
    @roles = Role.all
    @playerroles = Playerrole.all
  end

  # GET /playerroles/new
  def new
    @playerrole = Playerrole.new
    @players = Player.all
  end

  # GET /playerroles/1/edit
  def edit
  end

  # POST /playerroles
  # POST /playerroles.json
  def create
    @playerrole = Playerrole.new(playerrole_params)

    respond_to do |format|
      if @playerrole.save
        format.html { redirect_to playerroles_url, notice: 'Playerrole was successfully created.' }
        format.json { render :show, status: :created, location: @playerrole }
      else
        format.html { render :new }
        format.json { render json: @playerrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playerroles/1
  # PATCH/PUT /playerroles/1.json
  def update
    respond_to do |format|
      if @playerrole.update(playerrole_params)
        format.html { redirect_to @playerrole, notice: 'Playerrole was successfully updated.' }
        format.json { render :show, status: :ok, location: @playerrole }
      else
        format.html { render :edit }
        format.json { render json: @playerrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playerroles/1
  # DELETE /playerroles/1.json
  def destroy
    @playerrole.destroy
    respond_to do |format|
      format.html { redirect_to playerroles_url, notice: 'Playerrole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playerrole
      @playerrole = Playerrole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playerrole_params
      params.require(:playerrole).permit(:player_id, :role_id)
    end
end
