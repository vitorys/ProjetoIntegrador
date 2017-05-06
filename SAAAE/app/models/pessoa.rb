class Pessoa < ApplicationRecord
	belongs_to :usuario
	belongs_to :documento
	accepts_nested_attributes_for :usuario
	accepts_nested_attributes_for :documento 
	
end