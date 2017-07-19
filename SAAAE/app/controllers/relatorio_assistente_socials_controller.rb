class RelatorioAssistenteSocialsController < ApplicationController
  before_action :set_relatorio_assistente_social, only: [:show, :edit, :update, :destroy]

  # GET /relatorio_assistente_socials
  # GET /relatorio_assistente_socials.json
  def index
    @relatorio_assistente_socials = RelatorioAssistenteSocial.all.page(params[:page]).per(15)
    authorize @relatorio_assistente_socials
  end

  # GET /relatorio_assistente_socials/1
  # GET /relatorio_assistente_socials/1.json
  def show
    @relatorio_assistente_socials = RelatorioAssistenteSocial.all
    authorize @relatorio_assistente_socials
  end

  # GET /relatorio_assistente_socials/new
  def new
    @relatorio_assistente_socials = RelatorioAssistenteSocial.all
    authorize @relatorio_assistente_socials

    @relatorio_assistente_social = RelatorioAssistenteSocial.new
    @relatorio_assistente_social.build_relatorio
  end

  # GET /relatorio_assistente_socials/1/edit
  def edit
    @relatorio_assistente_socials = RelatorioAssistenteSocial.all
    authorize @relatorio_assistente_socials
  end

  # POST /relatorio_assistente_socials
  # POST /relatorio_assistente_socials.json
  def create
    @relatorio_assistente_socials = RelatorioAssistenteSocial.all
    authorize @relatorio_assistente_socials

    @relatorio_assistente_social = RelatorioAssistenteSocial.new(relatorio_assistente_social_params)

    respond_to do |format|
      if @relatorio_assistente_social.save
        format.html { redirect_to @relatorio_assistente_social, notice: 'Relatório de assistência social criado com sucesso!' }
        format.json { render :show, status: :created, location: @relatorio_assistente_social }
      else
        format.html { render :new }
        format.json { render json: @relatorio_assistente_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_assistente_socials/1
  # PATCH/PUT /relatorio_assistente_socials/1.json
  def update

    @relatorio_assistente_socials = RelatorioAssistenteSocial.all
    authorize @relatorio_assistente_socials

    respond_to do |format|
      if @relatorio_assistente_social.update(relatorio_assistente_social_params)
        format.html { redirect_to @relatorio_assistente_social, notice: 'Relatório de assistência social atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @relatorio_assistente_social }
      else
        format.html { render :edit }
        format.json { render json: @relatorio_assistente_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_assistente_socials/1
  # DELETE /relatorio_assistente_socials/1.json
  def destroy
    @relatorio_assistente_socials = RelatorioAssistenteSocial.all
    authorize @relatorio_assistente_socials

    @relatorio_assistente_social.destroy
    respond_to do |format|
      format.html { redirect_to relatorio_assistente_socials_url, notice: 'Relatório de assistência social deletado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_assistente_social
      @relatorio_assistente_social = RelatorioAssistenteSocial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatorio_assistente_social_params
      params.require(:relatorio_assistente_social).permit(:ras_motivo, :ras_entrevista, :relatorio_id, :relatorio_attributes => [:relatorio_data, :aluno_id, :funcionario_id])
    end
end
