require 'rails_helper'

RSpec.describe Aluno, type: :model do
	describe "Aluno" do
		it "RA inválido" do

		  	d = Documento.new
		  	d.doc_rg  = 523615917
		  	d.doc_cpf = 21819392848
		  	d.id = 1

		  	u = User.new
		  	u.email = "teste@gmail.com"
		  	u.password = "djshkhjd"
		  	u.id = 1

		  	pessoa = Pessoa.new
		    pessoa.pessoa_nome = "teste"
		    pessoa.pessoa_sexo = "Masculino"
		    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
		    pessoa.pessoa_cidade = "Campo Mourão"
		    pessoa.pessoa_estado = "Paraná"
		    pessoa.pessoa_cep = "aaaaa"
		    pessoa.documento = d
		    pessoa.user = u

		    a = Aluno.new
		    a.aluno_ra = "dsadsa"
    		a.aluno_curso = "Ciência da Computação"
    		a.aluno_data_ingresso = "2015"
    		a.aluno_periodo = "5"
    		a.aluno_frequencia = "100"
    		a.aluno_coeficiente = "0.6904"
    		a.pessoa_id = pessoa
    		
			expect(a.valid?).to be_falsey

	   end

		it "RA vazio" do

		  	d = Documento.new
		  	d.doc_rg  = 523615917
		  	d.doc_cpf = 21819392848
		  	d.id = 1

		  	u = User.new
		  	u.email = "teste@gmail.com"
		  	u.password = "djshkhjd"
		  	u.id = 1

		  	pessoa = Pessoa.new
		    pessoa.pessoa_nome = "teste"
		    pessoa.pessoa_sexo = "Masculino"
		    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
		    pessoa.pessoa_cidade = "Campo Mourão"
		    pessoa.pessoa_estado = "Paraná"
		    pessoa.pessoa_cep = "aaaaa"
		    pessoa.documento = d
		    pessoa.user = u

		    a = Aluno.new
		    a.aluno_ra = ""
    		a.aluno_curso = "Ciência da Computação"
    		a.aluno_data_ingresso = "2015"
    		a.aluno_periodo = "5"
    		a.aluno_frequencia = "100"
    		a.aluno_coeficiente = "0.6904"
    		a.pessoa_id = pessoa
			expect(a.valid?).to be_falsey

	   end
		it "Curso vazio" do

		  	d = Documento.new
		  	d.doc_rg  = 523615917
		  	d.doc_cpf = 21819392848
		  	d.id = 1

		  	u = User.new
		  	u.email = "teste@gmail.com"
		  	u.password = "djshkhjd"
		  	u.id = 1

		  	pessoa = Pessoa.new
		    pessoa.pessoa_nome = "teste"
		    pessoa.pessoa_sexo = "Masculino"
		    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
		    pessoa.pessoa_cidade = "Campo Mourão"
		    pessoa.pessoa_estado = "Paraná"
		    pessoa.pessoa_cep = "aaaaa"
		    pessoa.documento = d
		    pessoa.user = u

		    a = Aluno.new
		    a.aluno_ra = "1711199"
    		a.aluno_curso = ""
    		a.aluno_data_ingresso = "2015"
    		a.aluno_periodo = "5"
    		a.aluno_frequencia = "100"
    		a.aluno_coeficiente = "0.6904"
    		a.pessoa_id = pessoa
			expect(a.valid?).to be_falsey

	   end
		it "Data vazia " do

		  	d = Documento.new
		  	d.doc_rg  = 523615917
		  	d.doc_cpf = 21819392848
		  	d.id = 1

		  	u = User.new
		  	u.email = "teste@gmail.com"
		  	u.password = "djshkhjd"
		  	u.id = 1

		  	pessoa = Pessoa.new
		    pessoa.pessoa_nome = "teste"
		    pessoa.pessoa_sexo = "Masculino"
		    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
		    pessoa.pessoa_cidade = "Campo Mourão"
		    pessoa.pessoa_estado = "Paraná"
		    pessoa.pessoa_cep = "aaaaa"
		    pessoa.documento = d
		    pessoa.user = u

		    a = Aluno.new
		    a.aluno_ra = "1711199"
    		a.aluno_curso = "Ciência da Computação"
    		a.aluno_data_ingresso = ""
    		a.aluno_periodo = "5"
    		a.aluno_frequencia = "100"
    		a.aluno_coeficiente = "0.6904"
    		a.pessoa_id = pessoa

			expect(a.valid?).to be_falsey

	   end
	   it "Frequencia vazia" do

		  	d = Documento.new
		  	d.doc_rg  = 523615917
		  	d.doc_cpf = 21819392848
		  	d.id = 1

		  	u = User.new
		  	u.email = "teste@gmail.com"
		  	u.password = "djshkhjd"
		  	u.id = 1

		  	pessoa = Pessoa.new
		    pessoa.pessoa_nome = "teste"
		    pessoa.pessoa_sexo = "Masculino"
		    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
		    pessoa.pessoa_cidade = "Campo Mourão"
		    pessoa.pessoa_estado = "Paraná"
		    pessoa.pessoa_cep = "aaaaa"
		    pessoa.documento = d
		    pessoa.user = u

		    a = Aluno.new
		    a.aluno_ra = "1711199"
    		a.aluno_curso = "Ciência da Computação"
    		a.aluno_data_ingresso = "2015"
    		a.aluno_periodo = "5"
    		a.aluno_frequencia = ""
    		a.aluno_coeficiente = "0.6904"
    		a.pessoa_id = pessoa
			expect(a.valid?).to be_falsey

	   end
	   it "Frequencia inválido" do

		  	d = Documento.new
		  	d.doc_rg  = 523615917
		  	d.doc_cpf = 21819392848
		  	d.id = 1

		  	u = User.new
		  	u.email = "teste@gmail.com"
		  	u.password = "djshkhjd"
		  	u.id = 1

		  	pessoa = Pessoa.new
		    pessoa.pessoa_nome = "teste"
		    pessoa.pessoa_sexo = "Masculino"
		    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
		    pessoa.pessoa_cidade = "Campo Mourão"
		    pessoa.pessoa_estado = "Paraná"
		    pessoa.pessoa_cep = "aaaaa"
		    pessoa.documento = d
		    pessoa.user = u

		    a = Aluno.new
		    a.aluno_ra = "1711199"
    		a.aluno_curso = "Ciência da Computação"
    		a.aluno_data_ingresso = "2015"
    		a.aluno_periodo = "5"
    		a.aluno_frequencia = "xcc"
    		a.aluno_coeficiente = "0.6904"
    		a.pessoa_id = pessoa
			expect(a.valid?).to be_falsey

	   end
	   it "Coeficiente vazio" do

		  	d = Documento.new
		  	d.doc_rg  = 523615917
		  	d.doc_cpf = 21819392848
		  	d.id = 1

		  	u = User.new
		  	u.email = "teste@gmail.com"
		  	u.password = "djshkhjd"
		  	u.id = 1

		  	pessoa = Pessoa.new
		    pessoa.pessoa_nome = "teste"
		    pessoa.pessoa_sexo = "Masculino"
		    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
		    pessoa.pessoa_cidade = "Campo Mourão"
		    pessoa.pessoa_estado = "Paraná"
		    pessoa.pessoa_cep = "aaaaa"
		    pessoa.documento = d
		    pessoa.user = u

		    a = Aluno.new
		    a.aluno_ra = "1711199"
    		a.aluno_curso = "Ciência da Computação"
    		a.aluno_data_ingresso = "2015"
    		a.aluno_periodo = "5"
    		a.aluno_frequencia = "100"
    		a.aluno_coeficiente = ""
    		a.pessoa_id = pessoa
			expect(a.valid?).to be_falsey

	   end
	end
end
