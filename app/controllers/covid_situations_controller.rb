class CovidSituationsController < ApplicationController

  require 'chronic'
  before_action :authenticate_user!
  before_action :set_covid_situation, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /covid_situations or /covid_situations.json
  def index
    @covid_situations = CovidSituation.all
  end

  # GET /covid_situations/1 or /covid_situations/1.json
  def show
  end

  # GET /covid_situations/new
  def new
    @covid_situation = CovidSituation.new
  end

  # GET /covid_situations/1/edit
  def edit
    @localidades = Locality.where(area: Area.where(abbreviation: current_user.area).first)
  end

  # POST /get_acumulated/locality/date_part/new_cases/10
  def get_acumulated
    locality = Locality.find(params[:locality_id])
    part_date = params[:part_date].to_date
    case_type = params[:case_type]
    new_value = params[:new_value]
    
    case case_type
    when "new_cases"
      value = CovidSituation.where(locality: locality).where('part_date <=?', part_date).sum(:new_cases) + new_value.to_i
    when "new_recovered"
      value = CovidSituation.where(locality: locality).where('part_date <=?', part_date).sum(:new_recovered) + new_value.to_i      
    when "new_deceased"
      value = CovidSituation.where(locality: locality).where('part_date <=?', part_date).sum(:new_deceased) + new_value.to_i      
    end

    respond_to do |format|
      format.json  { render :json => {:function => "get_acumulated", :case_type => case_type, :value => value}}
    end
  end  

  # POST /covid_situations or /covid_situations.json
  def create
    @covid_situation = CovidSituation.new(covid_situation_params)
    respond_to do |format|
      if @covid_situation.save
        flash[:notice] = 'La situación de la localidad se creó correctamente.'
        format.html { render action: "index"}
        format.json { render :show, status: :created, location: @covid_situation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @covid_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid_situations/1 or /covid_situations/1.json
  def update
    respond_to do |format|
      if @covid_situation.update(covid_situation_params)
        format.html { redirect_to covid_situation_url(@covid_situation), notice: 'La situación de la localidad se actualizó correctamente.' }
        @covid_situations = CovidSituation.all    
        format.json { render :show, status: :ok, location: @covid_situation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @covid_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid_situations/1 or /covid_situations/1.json
  def destroy
    @covid_situation.destroy

    respond_to do |format|
      format.html { redirect_to covid_situations_url, notice: "Covid situation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid_situation
      @covid_situation = CovidSituation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid_situation_params
      params.require(:covid_situation).permit(:locality_id, :part_date, :ambulatory, :general_room, :uti_with_arm, :uti_without_arm, :new_cases, :new_recovered, :new_deceased)
    end
end
