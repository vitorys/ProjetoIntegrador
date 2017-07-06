class Atendimento < ApplicationRecord
  belongs_to :aluno
  belongs_to :funcionario

   validates_presence_of :area
   validates_presence_of :aluno_id
   validates_presence_of :funcionario_id

end
