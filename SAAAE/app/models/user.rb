class User < ApplicationRecord

  enum permissao: [:admin, :aluno, :funcionario]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #belongs_to :pessoa
end
