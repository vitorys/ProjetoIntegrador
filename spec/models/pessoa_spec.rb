require 'rails_helper'

RSpec.describe Pessoa, type: :model do
  describe "Pessoa" do
  	it "Cep com caracteres" do

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


	    expect(pessoa.valid?).to be_falsey

    end

    it "Nome vazio" do

	  	d = Documento.new
	  	d.doc_rg  = 523615917
	  	d.doc_cpf = 21819392848
	  	d.id = 1

	  	u = User.new
	  	u.email = "teste@gmail.com"
	  	u.password = "djshkhjd"
	  	u.id = 1

	  	pessoa = Pessoa.new
	    pessoa.pessoa_nome = ""
	    pessoa.pessoa_sexo = "Masculino"
	    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
	    pessoa.pessoa_cidade = "Campo Mourão"
	    pessoa.pessoa_estado = "Paraná"
	    pessoa.pessoa_cep = "aaaaa"
	    pessoa.documento = d
	    pessoa.user = u


	    expect(pessoa.valid?).to be_falsey

    end
    it "Sexo vazio" do

	  	d = Documento.new
	  	d.doc_rg  = 523615917
	  	d.doc_cpf = 21819392848
	  	d.id = 1

	  	u = User.new
	  	u.email = "teste@gmail.com"
	  	u.password = "djshkhjd"
	  	u.id = 1

	  	pessoa = Pessoa.new
	    pessoa.pessoa_nome = "Teste"
	    pessoa.pessoa_sexo = ""
	    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
	    pessoa.pessoa_cidade = "Campo Mourão"
	    pessoa.pessoa_estado = "Paraná"
	    pessoa.pessoa_cep = "aaaaa"
	    pessoa.documento = d
	    pessoa.user = u


	    expect(pessoa.valid?).to be_falsey

    end
    it "Endereço vazio" do

	  	d = Documento.new
	  	d.doc_rg  = 523615917
	  	d.doc_cpf = 21819392848
	  	d.id = 1

	  	u = User.new
	  	u.email = "teste@gmail.com"
	  	u.password = "djshkhjd"
	  	u.id = 1

	  	pessoa = Pessoa.new
	    pessoa.pessoa_nome = "Teste"
	    pessoa.pessoa_sexo = "Masculino"
	    pessoa.pessoa_endereco = ""
	    pessoa.pessoa_cidade = "Campo Mourão"
	    pessoa.pessoa_estado = "Paraná"
	    pessoa.pessoa_cep = "aaaaa"
	    pessoa.documento = d
	    pessoa.user = u

	    expect(pessoa.valid?).to be_falsey

    end
    it "Cidade vazio" do

	  	d = Documento.new
	  	d.doc_rg  = 523615917
	  	d.doc_cpf = 21819392848
	  	d.id = 1

	  	u = User.new
	  	u.email = "teste@gmail.com"
	  	u.password = "djshkhjd"
	  	u.id = 1

	  	pessoa = Pessoa.new
	    pessoa.pessoa_nome = "Teste"
	    pessoa.pessoa_sexo = "Masculino"
	    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
	    pessoa.pessoa_cidade = ""
	    pessoa.pessoa_estado = "Paraná"
	    pessoa.pessoa_cep = "aaaaa"
	    pessoa.documento = d
	    pessoa.user = u


	    expect(pessoa.valid?).to be_falsey

    end
    it "Estado vazio" do

	  	d = Documento.new
	  	d.doc_rg  = 523615917
	  	d.doc_cpf = 21819392848
	  	d.id = 1

	  	u = User.new
	  	u.email = "teste@gmail.com"
	  	u.password = "djshkhjd"
	  	u.id = 1

	  	pessoa = Pessoa.new
	    pessoa.pessoa_nome = "Teste"
	    pessoa.pessoa_sexo = "Masculino"
	    pessoa.pessoa_endereco = "Av. Capitao Indio Bandeira"
	    pessoa.pessoa_cidade = "Campo Mourão"
	    pessoa.pessoa_estado = ""
	    pessoa.pessoa_cep = "aaaaa"
	    pessoa.documento = d
	    pessoa.user = u


	    expect(pessoa.valid?).to be_falsey

    end

  end

end
