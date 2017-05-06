class Documento < ApplicationRecord
	validates_length_of :doc_cpf, :is => 11, message: 'falta numeros'
  	validates_numericality_of :doc_cpf, message: 'cpf invalido'
  	validates_uniqueness_of :doc_cpf, message: 'cpf invalido'
  	validates_cpf_format_of :doc_cpf, message: 'cpf invalido'
end
