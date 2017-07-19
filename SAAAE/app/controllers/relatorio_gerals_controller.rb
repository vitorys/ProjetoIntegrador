class RelatorioGeralsController < ApplicationController
  before_action :set_relatorio_geral, only: [:show, :edit, :update, :destroy]

  # GET /relatorio_gerals
  # GET /relatorio_gerals.json
  def index
    @relatorio_gerals = RelatorioGeral.all.page(params[:page]).per(15)
    authorize @relatorio_gerals
  end

  # GET /relatorio_gerals/1
  # GET /relatorio_gerals/1.json
  def show
  end

  # GET /relatorio_gerals/new
  def new
    @relatorio_gerals = RelatorioGeral.all
    authorize @relatorio_gerals

    @relatorio_geral = RelatorioGeral.new
    @relatorio_geral.build_relatorio
  end

  # GET /relatorio_gerals/1/edit
  def edit
  end

  # POST /relatorio_gerals
  # POST /relatorio_gerals.json
  def create
    @relatorio_gerals = RelatorioGeral.all
    authorize @relatorio_gerals

    @relatorio_geral = RelatorioGeral.new(relatorio_geral_params)

    respond_to do |format|
      if @relatorio_geral.save
        format.html { redirect_to @relatorio_geral, notice: 'Relatório geral criado com sucesso!' }
        format.json { render :show, status: :created, location: @relatorio_geral }
      else
        format.html { render :new }
        format.json { render json: @relatorio_geral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_gerals/1
  # PATCH/PUT /relatorio_gerals/1.json
  def update
    @relatorio_gerals = RelatorioGeral.all
    authorize @relatorio_gerals

    respond_to do |format|
      if @relatorio_geral.update(relatorio_geral_params)
        format.html { redirect_to @relatorio_geral, notice: 'Relatório geral atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @relatorio_geral }
      else
        format.html { render :edit }
        format.json { render json: @relatorio_geral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_gerals/1
  # DELETE /relatorio_gerals/1.json
  def destroy
    @relatorio_gerals = RelatorioGeral.all
    authorize @relatorio_gerals

    @relatorio_geral.destroy
    respond_to do |format|
      format.html { redirect_to relatorio_gerals_url, notice: 'Relatório geral deletado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_geral
      @relatorio_geral = RelatorioGeral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatorio_geral_params
      params.require(:relatorio_geral).permit(:rg_objetivo, :rg_atendimento, :relatorio_attributes => [:relatorio_data, :aluno_id, :funcionario_id])
    end
end
