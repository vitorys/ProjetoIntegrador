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
end