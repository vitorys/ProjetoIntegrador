#Arquivos para o ruby deverão ser salvados com a extensao ".rb"
#Para executar o arquivos basta digitar no terminal	"ruby nome_arquivo.rb"
#Variaveis no Ruby não necessitam de Declaração, a propria informação já o define

#Exemplos de Algumas estruturas
#Link: https://www.caelum.com.br/apostila-ruby-on-rails/0

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Metodo Capitalize (Deixa em caixa alta o primero caractere da String)	
=end
	nome = "renan"
	puts nome.capitalize 	#resultado: Renan (porem não altera a variavel para caixa alta)
	puts nome 				#resultado: renan

	nome = "renan"
	puts nome.capitalize! 	#resultado: Renan (altera a variavel para caixa alta)
	puts nome 				#resultado: Renan

----------------------------------------------------------------------------------------------------------------------------------
=begin	
	Estrutura do IF
=end
	variavel = nil
	if(variavel)
		puts("so iria imprimir se variavel != null")
	end
	if(3 == 3)
		puts("3 é 3")
	end

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Estrutura do SWITCH
=end
	def procura_sede_copa_do_mundo( ano )		#criando uma função que recebe uma varialvel
  	case ano
  		when 1895..2005		#estrutura de range	
    		print("Não lembro ..." + "Concatenação" + variavel + "texto" )		# "+" é concatenação igual em java
  		when 2006
    		print("Alemanha " + "Algum texto")
  		when 2010
    		print ("África do Sul" + Alguma_Varialvel) 
  		when 2014
    		"Brasil"
  		end
	end

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Estrutura de Repetição FOR
=end
	for i in (1..3)
    	x = i
	end

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Função de Match
=end
	/rio/ =~ "são paulo"	#Retorna nil
	/paulo/ =~ "são paulo"	#Retorna 4


----------------------------------------------------------------------------------------------------------------------------------
=begin
	Definições de Metodos	
=end
	def pessoa.vai( lugar, var1, var2...)
		print ("indo para" + lugar)		#printa o resultado
	end

	def pessoa.vai( lugar, var1, var2...)
  		"indo para " + lugar			#retorna o resultado já concatenado
	end									#nao tem return, apenas retorna a ultima linha executada

	pessoa.vai("casa",var1, var2...)	#chamada do metodo

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Crindo classes
=end
	class Pessoa
		def pessoa.vai( lugar, var1, var2...)
			print ("indo para" + lugar)
		end
		
		def troca(roupa, lugar="banheiro")
    		"trocando de #{roupa} no #{lugar}"
  		end
	end
	p = Pessoa.new		#criando uma classe

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Metodo "self" idem em "this" no java 	
=end
	class Conta
  		def transfere_para(destino, quantia)
    	self.debita (quantia)			#levando em conta que o metodo debita esteja criado
    	destino.deposita quantia
  		end
	end

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Encapsulamento "@"
=end
	class Pessoa
  		def muda_nome(novo_nome)
    		@nome = novo_nome
  		end

  		def diz_nome
    		print ("meu nome é " + @nome )
  		end
	end

=begin
	Inicializar Construtores
=end
	class Pessoa
  		def initialize(nome)
    		@nome = nome
  		end
	end

	joao = Pessoa.new("João")

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Arrays
=end
	lista = Array.new
	lista << "RR-71"
	lista << "RR-75"
	lista << "FJ-91"

	print (lista[1])		#resultado: "RR-75"
	print (lista[0])		#resultado: "RR-71"

=begin
	Recebendo Arrays
=end
	def compra(*produtos) 	#produtos é uma array
  		puts produtos.size
	end

	compra("Notebook", "Pendrive", "Cafeteira")

----------------------------------------------------------------------------------------------------------------------------------
=begin
	Hash idem em java como HashMap
=end
	config = Hash.new
	config["porta"] = 80
	config["ssh"] = false
	config["nome"] = "Caelum.com.br"

	#Note que o uso do Hash implicou em uma legibilidade maior apesar de uma proliferação de palavras:
	aluno.transfere( {destino: escola, data: Time.now, valor: 50.00} )
	def transfere(argumentos)
  		destino = argumentos[:destino]
  		data = argumentos[:data]
  		valor = argumentos[:valor]
	end


















