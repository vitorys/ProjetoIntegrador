class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	helper_method :foundPessoa

	def foundPessoa(id)
		@pessoas = Pessoa.all
		@pessoas.each do |pessoa|
		@teste
			if pessoa.id == id
				@teste = pessoa
			end
		end
		@teste
	end

	helper_method :foundAluno

	def foundAluno(id)
		@alunos = Aluno.all
		@alunos.each do |aluno|
			if aluno.id == id
				@return = aluno
			end
		end
		@return
	end

	def after_sign_in_path_for(resource_or_scope)
		relatorio_gerals_path
	end

	def after_sign_out_path_for(resource_or_scope)
	  	relatorio_gerals_path
	end
end