class Estado < ApplicationRecord
	has_many :cidades
	has_many :pessoa
end
