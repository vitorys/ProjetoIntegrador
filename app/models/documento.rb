class Documento < ApplicationRecord
	validates_length_of :doc_cpf, :is => 11, message: 'é maior que o tamanho permitido.'
  	validates_numericality_of :doc_cpf, message: 'possui um caracter não válido'
  	validates_uniqueness_of :doc_cpf, message: 'já cadastrado'
  	validates_cpf_format_of :doc_cpf, message: 'possui um formato inválido'
  	validates_length_of :doc_rg, :minimum=>8, message: 'não possui um tamanho mínimo.'
end
