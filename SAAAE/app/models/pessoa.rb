class Pessoa < ApplicationRecord
	belongs_to :user, :dependent => :destroy
	belongs_to :documento, :dependent => :destroy
	accepts_nested_attributes_for :user
	accepts_nested_attributes_for :documento 
	
end