class Funcionario < ApplicationRecord
  belongs_to :pessoa
  has_many :relatorio, :dependent => :destroy
  has_many :atendimento, :dependent => :nullify

  validates_presence_of :funcionario_rf
  validates_presence_of :funcionario_area
  validates_presence_of :pessoa_id
end
