class ApplicationController < ActionController::Base
	include Pundit

	protect_from_forgery with: :exception
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


	private 
	def user_not_authorized
		flash[:error] = "Você não tem permissão para acessar esta página."
		redirect_to(request.referrer || root_path )
	end


	helper_method :findPessoa

	def findPessoa(id)
		@pessoas = Pessoa.all
		@teste
		@pessoas.each do |pessoa|
			if pessoa.id == id
				@teste = pessoa
			end
		end
		@teste
	end

	helper_method :findAluno
	def findAluno(id)
		@alunos = Aluno.all
		@alunos.each do |aluno|
			if aluno.id == id
				@return = aluno
			end
		end
		@return
	end

	helper_method :findFuncionario
	def findFuncionario(id)
		@funcionarios = Funcionario.all
		@r
		@funcionarios.each do |funcionario|
			if funcionario.id == id
			 	@r = funcionario
			 end
		end
		@r
	end 

	helper_method :findRelatorios
	def findRelatorios(id)
		@relatorios = Relatorio.all
		arr = Array.new
		@relatorios.each do |relatorio|
			if relatorio.funcionario_id == id
				arr.push(relatorio)
			end
		end
		return arr
	end

	helper_method :findRelatorioGeral
	def findRelatorioGeral(id)
		@rg = RelatorioGeral.all

		@rg.each do |r|
			if r.relatorio_id == id
				return r
			end
		end
	end


	helper_method :findRelatorioPsicologico
	def findRelatorioPsicologico(id)
		@rg = RelatorioPsicologico.all

		@rg.each do |r|
			if r.relatorio_id == id
				return r
			end
		end
	end


	helper_method :findRelatorioPedagogico
	def findRelatorioPedagogico(id)
		@rg = RelatorioPedagogico.all

		@rg.each do |r|
			if r.relatorio_id == id
				return r
			end
		end
	end


	helper_method :findRelatorioAssistenteSocial
	def findRelatorioAssistenteSocial(id)
		@rg = RelatorioAssistenteSocial.all

		@rg.each do |r|
			if r.relatorio_id == id
				return r
			end
		end
	end
	
	def after_sign_in_path_for(resource_or_scope)
		welcome_index_path
	end

	def after_sign_out_path_for(resource_or_scope)
	  	new_user_session_path
	end
end