class Aluno < ApplicationRecord
  belongs_to :pessoa, :dependent => :destroy
end
