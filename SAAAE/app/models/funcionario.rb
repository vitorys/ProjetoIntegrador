class Funcionario < ApplicationRecord
  belongs_to :pessoa
  has_many :relatorio, :dependent => :destroy
  has_many :atendimento, :dependent => :nullify
end
