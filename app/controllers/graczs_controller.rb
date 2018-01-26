class GraczsController < ApplicationController
  before_action :set_gracz, only: [:show, :edit, :update, :destroy]

  # GET /graczs
  # GET /graczs.json
  def index
    @graczs = Gracz.all
  end

  # GET /graczs/1
  # GET /graczs/1.json
  def show
  end

  # GET /graczs/new
  def new
    @gracz = Gracz.new
  end

  # GET /graczs/1/edit
  def edit
  end

  # POST /graczs
  # POST /graczs.json
  def create
    @gracz = Gracz.new(gracz_params)

    respond_to do |format|
      if @gracz.save
        format.html { redirect_to @gracz, notice: 'Gracz was successfully created.' }
        format.json { render :show, status: :created, location: @gracz }
      else
        format.html { render :new }
        format.json { render json: @gracz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graczs/1
  # PATCH/PUT /graczs/1.json
  def update
    respond_to do |format|
      if @gracz.update(gracz_params)
        format.html { redirect_to @gracz, notice: 'Gracz was successfully updated.' }
        format.json { render :show, status: :ok, location: @gracz }
      else
        format.html { render :edit }
        format.json { render json: @gracz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graczs/1
  # DELETE /graczs/1.json
  def destroy
    @gracz.destroy
    respond_to do |format|
      format.html { redirect_to graczs_url, notice: 'Gracz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gracz
      @gracz = Gracz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gracz_params
      params.require(:gracz).permit(:imie, :nazwisko, :nick, :team_id)
    end
end
