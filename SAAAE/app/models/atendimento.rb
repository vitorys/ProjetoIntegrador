class Atendimento < ApplicationRecord
  belongs_to :aluno
  belongs_to :funcionario
end
