class NoticesController < ApplicationController

  require 'chronic'
  before_action :authenticate_user!, :only => [:edit]
  before_action :set_notice, only: %i[ show edit update destroy ]
  load_and_authorize_resource


  # GET /notices or /notices.json
  def index
    @notices = Notice.all
  end

  # GET /notices/1 or /notices/1.json
  def show
  end

  # GET /notices/new
  def new
    @notice = Notice.new
  end

  # GET /notices/1/edit
  def edit
  end

  # POST /notices or /notices.json
  def create
    respond_to do |format|
      if @notice.save
        format.html { redirect_to notice_url(@notice), notice: "Noticia creada correctamente." }
        format.json { render :show, status: :created, location: @notice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notices/1 or /notices/1.json
  def update
    respond_to do |format|
      if @notice.update(notice_params)
        format.html { redirect_to notice_url(@notice), notice: "Noticia actualizada correctamente." }
        format.json { render :show, status: :ok, location: @notice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1 or /notices/1.json
  def destroy
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to notices_url, notice: "Noticia eliminada correctamente." }
      format.json { head :no_content }
    end
  end

  




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notice_params
      params.require(:notice).permit(:titulo, :subtitulo, :cuerpo, :image, :tipo, :fecha)
    end
end
