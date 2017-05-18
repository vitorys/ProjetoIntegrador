class Documento < ApplicationRecord
	validates_length_of :doc_cpf, :is => 11, message: ' '
  	validates_numericality_of :doc_cpf, message: ' '
  	validates_uniqueness_of :doc_cpf, message: ' '
  	validates_cpf_format_of :doc_cpf, message: ' '

  	validates_length_of :doc_rg, :minimum=>9, message: ' '
end
