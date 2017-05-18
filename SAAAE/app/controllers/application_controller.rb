class ApplicationController < ActionController::Base

	include Pundit

	protect_from_forgery with: :exception

	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

	private
		def user_not_authorized
			flash[:notice] = "Você não tem permissão para realizar essa operação"
			redirect_to(request.referrer || root_path)	
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

	def after_sign_in_path_for(resource_or_scope)
		welcome_index_path
	end

	def after_sign_out_path_for(resource_or_scope)
	  	new_user_session_path
	end
end