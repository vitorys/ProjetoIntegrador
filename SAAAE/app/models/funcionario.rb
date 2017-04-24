class Funcionario < ApplicationRecord
  belongs_to :pessoa, dependent: :destroy
end
