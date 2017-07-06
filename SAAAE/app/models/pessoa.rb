class Pessoa < ApplicationRecord
	belongs_to :user, :dependent => :destroy
	belongs_to :documento, :dependent => :destroy
	has_one :funcionario, :dependent => :destroy

	accepts_nested_attributes_for :user
	accepts_nested_attributes_for :documento

	validates_presence_of :pessoa_nome
	validates_presence_of :pessoa_sexo
	validates_presence_of :pessoa_endereco
	validates_presence_of :pessoa_cidade
	validates_presence_of :pessoa_estado
	validates_presence_of :pessoa_cep
end