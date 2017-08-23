class Relatorio < ApplicationRecord
  belongs_to :aluno
  belongs_to :funcionario

  has_many :relatorio_assistente_social, :dependent => :destroy
  has_many :relatorio_pedagogico, :dependent => :destroy
  has_many :relatorio_psicologico, :dependent => :destroy

  validates_presence_of :relatorio_data
  validates_presence_of :aluno_id
  validates_presence_of :funcionario_id
end
