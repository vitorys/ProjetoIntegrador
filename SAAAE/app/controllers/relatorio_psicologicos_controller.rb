class RelatorioPsicologicosController < ApplicationController
  before_action :set_relatorio_psicologico, only: [:show, :edit, :update, :destroy]

  # GET /relatorio_psicologicos
  # GET /relatorio_psicologicos.json
  def index
    @relatorio_psicologicos = RelatorioPsicologico.all.page(params[:page]).per(15)
    authorize @relatorio_psicologicos
  end

  # GET /relatorio_psicologicos/1
  # GET /relatorio_psicologicos/1.json
  def show
    @relatorio_psicologicos = RelatorioPsicologico.all
    authorize @relatorio_psicologicos
  end

  # GET /relatorio_psicologicos/new
  def new
    @relatorio_psicologicos = RelatorioPsicologico.all
    authorize @relatorio_psicologicos

    @relatorio_psicologico = RelatorioPsicologico.new
    @relatorio_psicologico.build_relatorio
  end

  # GET /relatorio_psicologicos/1/edit
  def edit
    @relatorio_psicologicos = RelatorioPsicologico.all
    authorize @relatorio_psicologicos
  end

  # POST /relatorio_psicologicos
  # POST /relatorio_psicologicos.json
  def create
    @relatorio_psicologicos = RelatorioPsicologico.all
    authorize @relatorio_psicologicos

    @relatorio_psicologico = RelatorioPsicologico.new(relatorio_psicologico_params)

    respond_to do |format|
      if @relatorio_psicologico.save
        format.html { redirect_to @relatorio_psicologico, notice: 'Relatório psicológico criado com sucesso!' }
        format.json { render :show, status: :created, location: @relatorio_psicologico }
      else
        format.html { render :new }
        format.json { render json: @relatorio_psicologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_psicologicos/1
  # PATCH/PUT /relatorio_psicologicos/1.json
  def update
    @relatorio_psicologicos = RelatorioPsicologico.all
    authorize @relatorio_psicologicos

    respond_to do |format|
      if @relatorio_psicologico.update(relatorio_psicologico_params)
        format.html { redirect_to @relatorio_psicologico, notice: 'Relatório psicológico atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @relatorio_psicologico }
      else
        format.html { render :edit }
        format.json { render json: @relatorio_psicologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_psicologicos/1
  # DELETE /relatorio_psicologicos/1.json
  def destroy
    @relatorio_psicologicos = RelatorioPsicologico.all
    authorize @relatorio_psicologicos

    @relatorio_psicologico.destroy
    respond_to do |format|
      format.html { redirect_to relatorio_psicologicos_url, notice: 'Relatório psicológico deletado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_psicologico
      @relatorio_psicologico = RelatorioPsicologico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatorio_psicologico_params
      params.require(:relatorio_psicologico).permit(:rp_objetivo, :rp_atendimento, :relatorio_id, :relatorio_attributes => [:relatorio_data, :aluno_id, :funcionario_id])
    end
end
