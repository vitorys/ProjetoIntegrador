class Pessoa < ApplicationRecord
	has_one :usuario
	accepts_nested_attributes_for :usuario
end
