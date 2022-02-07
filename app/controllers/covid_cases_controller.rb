class CovidCasesController < ApplicationController
  before_action :authenticate_user!, :only => [:index, :edit]
  before_action :set_covid_case, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /covid_cases or /covid_cases.json
  def index
    if !current_user.nil?
  		@covid_cases = CovidCase.where(locality: Locality.where(current_user.area))
  	end
  end

  # GET /covid_cases/1 or /covid_cases/1.json
  def show
  end

  # GET /covid_cases/new
  def new
    @covid_case = CovidCase.new
  end

  # GET /covid_cases/1/edit
  def edit
  end

  # POST /covid_cases or /covid_cases.json
  def create
    @covid_case = CovidCase.new(covid_case_params)
    respond_to do |format|
      @covid_case.state_id = 1
      loop do
        sc = rand 100000..999999
        if CovidCase.where(dni: @covid_case.dni, security_code: sc).first.nil?
          @covid_case.security_code = sc
          break
        end
      end
      if (verify_recaptcha(model: @covid_case, attribute: "recaptcha", message:"Debes verificar que no eres un robot") && @covid_case.save)
        format.html { redirect_to covid_case_url(@covid_case), notice: 'La información del caso ha sido enviada correctamente.' }
        format.json { render :show, status: :created, location: @covid_case }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @covid_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid_cases/1 or /covid_cases/1.json
  def update
    respond_to do |format|
      if @covid_case.update(covid_case_params)
        format.html { redirect_to covid_case_url(@covid_case), notice: 'La información del caso ha sido actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @covid_case }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @covid_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid_cases/1 or /covid_cases/1.json
  def destroy
    @covid_case.destroy

    respond_to do |format|
      format.html { redirect_to covid_cases_url, notice: "El Caso Covid ha sido destruido." }
      format.json { head :no_content }
    end
  end

  def confirm
    @covid_case = CovidCase.find(params[:id])

    unless @covid_case.nil?
      if @covid_case.state_id == 1
        @covid_case.state_id = 2
        @covid_case.save!
      end
    end

    # CovidCaseMailer.with(covid_case: @covid_case).new_covid_case_email.deliver_later
    # redirect_to covid_case_path
  end

  def pdf_confirm
    @covid_case = CovidCase.find(params[:id])
    name_pdf = "Alta_Covid_" + @covid_case.lastname 
    respond_to do |format|
      format.pdf do
        render pdf: name_pdf, template: "layouts/certificates/case_confirmed.html.erb", encoding: "UTF-8"    # Excluding ".pdf" extension.
      end
    end
  end

  def pdf_suspicious
    @covid_case = CovidCase.find(params[:id])
    name_pdf = "Alta_Covid_" + @covid_case.lastname 
    respond_to do |format|
      format.pdf do
        render pdf: name_pdf, template: "layouts/certificates/case_suspicious.html.erb", encoding: "UTF-8"    # Excluding ".pdf" extension.
      end
    end
  end

  def pdf_contact
    @covid_case = CovidCase.find(params[:id])
    name_pdf = "Alta_Covid_" + @covid_case.lastname 
    respond_to do |format|
      format.pdf do
        render pdf: name_pdf, template: "layouts/certificates/close_contact.html.erb", encoding: "UTF-8"    # Excluding ".pdf" extension.
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid_case
      @covid_case = CovidCase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid_case_params
      params.require(:covid_case).permit(:firstname, :lastname, :dni, :email, :cellphone, :address_street, :address_number, :address_floor, :address_department, :locality_id, :state_id, :reason, :initial_date, :c_firstname, :c_lastname, :c_is_cohabiting, :c_dni, :c_cellphone, :c_cohabiting_symptom_date, :c_cohabiting_symptom_date , :c_symptom, :institution, :vaccination_scheme_id, :last_dose_date, :security_code)
    end
end
