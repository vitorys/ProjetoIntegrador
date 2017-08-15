class ObjetivosController < ApplicationController
  before_action :set_objetivo, only: [:show, :edit, :update, :destroy]

  # GET /objetivos
  # GET /objetivos.json
  def index
    @objetivos = Objetivo.all.page(params[:page]).per(15)
  end

  # GET /objetivos/1
  # GET /objetivos/1.json
  def show
  end

  # GET /objetivos/new
  def new
    @objetivo = Objetivo.new
  end

  # GET /objetivos/1/edit
  def edit
  end

  # POST /objetivos
  # POST /objetivos.json
  def create
    @objetivo = Objetivo.new(objetivo_params)

    respond_to do |format|
      if @objetivo.save
        format.html { redirect_to @objetivo, notice: 'Objetivo was successfully created.' }
        format.json { render :show, status: :created, location: @objetivo }
      else
        format.html { render :new }
        format.json { render json: @objetivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objetivos/1
  # PATCH/PUT /objetivos/1.json
  def update
    respond_to do |format|
      if @objetivo.update(objetivo_params)
        format.html { redirect_to @objetivo, notice: 'Objetivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @objetivo }
      else
        format.html { render :edit }
        format.json { render json: @objetivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetivos/1
  # DELETE /objetivos/1.json
  def destroy
    @objetivo.destroy
    respond_to do |format|
      format.html { redirect_to objetivos_url, notice: 'Objetivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objetivo
      @objetivo = Objetivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objetivo_params
      params.require(:objetivo).permit(:motivo)
    end
end
