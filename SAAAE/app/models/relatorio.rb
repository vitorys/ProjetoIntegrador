class Relatorio < ApplicationRecord
  belongs_to :aluno
  belongs_to :funcionario

  has_many :relatorio_assistente_social, :dependent => :destroy
  has_many :relatorio_pedagogico, :dependent => :destroy
  has_many :relatorio_psicologico, :dependent => :destroy

end
