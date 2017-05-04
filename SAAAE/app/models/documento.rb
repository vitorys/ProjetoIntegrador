class Documento < ApplicationRecord
has_one :pessoa
accepts_nested_attributes_for :pessoa
end
