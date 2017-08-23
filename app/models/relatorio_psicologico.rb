class RelatorioPsicologico < ApplicationRecord
  belongs_to :relatorio
  accepts_nested_attributes_for :relatorio

  validates_presence_of :rp_objetivo
  validates_presence_of :rp_atendimento
  
end
