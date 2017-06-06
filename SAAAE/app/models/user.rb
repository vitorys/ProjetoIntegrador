class User < ApplicationRecord

  enum role: {aluno: 0, pedagogx: 1, psicologx: 2, assistente_social: 3, admin: 99}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :pessoa, :dependent => :destroy
end
