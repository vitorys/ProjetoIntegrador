class RelatorioAssistenteSocial < ApplicationRecord
  belongs_to :relatorio
  accepts_nested_attributes_for :relatorio

  validates_presence_of :ras_motivo
  validates_presence_of :ras_entrevista
end
