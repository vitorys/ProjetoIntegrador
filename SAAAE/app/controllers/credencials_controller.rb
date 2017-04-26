class CredencialsController < ApplicationController
  before_action :set_credencial, only: [:show, :edit, :update, :destroy]

  # GET /credencials
  # GET /credencials.json
  def index
    @credencials = Credencial.all
  end

  # GET /credencials/1
  # GET /credencials/1.json
  def show
  end

  # GET /credencials/new
  def new
    @credencial = Credencial.new
  end

  # GET /credencials/1/edit
  def edit
  end

  # POST /credencials
  # POST /credencials.json
  def create
    @credencial = Credencial.new(credencial_params)

    respond_to do |format|
      if @credencial.save
        format.html { redirect_to @credencial, notice: 'Credencial was successfully created.' }
        format.json { render :show, status: :created, location: @credencial }
      else
        format.html { render :new }
        format.json { render json: @credencial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credencials/1
  # PATCH/PUT /credencials/1.json
  def update
    respond_to do |format|
      if @credencial.update(credencial_params)
        format.html { redirect_to @credencial, notice: 'Credencial was successfully updated.' }
        format.json { render :show, status: :ok, location: @credencial }
      else
        format.html { render :edit }
        format.json { render json: @credencial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credencials/1
  # DELETE /credencials/1.json
  def destroy
    @credencial.destroy
    respond_to do |format|
      format.html { redirect_to credencials_url, notice: 'Credencial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credencial
      @credencial = Credencial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credencial_params
      params.require(:credencial).permit(:credencial_senha, :pessoa_id)
    end
end
