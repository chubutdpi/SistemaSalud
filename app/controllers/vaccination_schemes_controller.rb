class VaccinationSchemesController < ApplicationController
  before_action :set_vaccination_scheme, only: %i[ show edit update destroy ]

  # GET /vaccination_schemes or /vaccination_schemes.json
  def index
    @vaccination_schemes = VaccinationScheme.all
  end

  # GET /vaccination_schemes/1 or /vaccination_schemes/1.json
  def show
  end

  # GET /vaccination_schemes/new
  def new
    @vaccination_scheme = VaccinationScheme.new
  end

  # GET /vaccination_schemes/1/edit
  def edit
  end

  # POST /vaccination_schemes or /vaccination_schemes.json
  def create
    @vaccination_scheme = VaccinationScheme.new(vaccination_scheme_params)

    respond_to do |format|
      if @vaccination_scheme.save
        format.html { redirect_to vaccination_scheme_url(@vaccination_scheme), notice: "Vaccination scheme was successfully created." }
        format.json { render :show, status: :created, location: @vaccination_scheme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vaccination_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vaccination_schemes/1 or /vaccination_schemes/1.json
  def update
    respond_to do |format|
      if @vaccination_scheme.update(vaccination_scheme_params)
        format.html { redirect_to vaccination_scheme_url(@vaccination_scheme), notice: "Vaccination scheme was successfully updated." }
        format.json { render :show, status: :ok, location: @vaccination_scheme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vaccination_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccination_schemes/1 or /vaccination_schemes/1.json
  def destroy
    @vaccination_scheme.destroy

    respond_to do |format|
      format.html { redirect_to vaccination_schemes_url, notice: "Vaccination scheme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccination_scheme
      @vaccination_scheme = VaccinationScheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vaccination_scheme_params
      params.require(:vaccination_scheme).permit(:name, :last_dosis)
    end
end
