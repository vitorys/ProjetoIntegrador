class RelatorioAssistenteSocial < ApplicationRecord
  belongs_to :relatorio
  accepts_nested_attributes_for :relatorio
end
