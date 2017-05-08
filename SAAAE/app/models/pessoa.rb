class Pessoa < ApplicationRecord
	belongs_to :user
	belongs_to :documento
	accepts_nested_attributes_for :user
	accepts_nested_attributes_for :documento 
	
end