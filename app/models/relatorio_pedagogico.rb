class RelatorioPedagogico < ApplicationRecord
  belongs_to :relatorio
  accepts_nested_attributes_for :relatorio

  validates_presence_of :rpe_objetivo
  validates_presence_of :rpe_atendimento
  validates_presence_of :rpe_motivo

end
