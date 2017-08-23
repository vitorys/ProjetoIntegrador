class RelatorioGeral < ApplicationRecord
  belongs_to :relatorio
  accepts_nested_attributes_for :relatorio

  validates_presence_of :rg_objetivo
  validates_presence_of :rg_atendimento

end
