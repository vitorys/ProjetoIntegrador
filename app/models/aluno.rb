class Aluno < ApplicationRecord
  belongs_to :pessoa
  
	validates_presence_of :aluno_ra
    validates_presence_of :aluno_curso
    validates_presence_of :aluno_data_ingresso
    validates_presence_of :aluno_periodo
    validates_presence_of :aluno_frequencia
    validates_presence_of :aluno_coeficiente

end
