class Stroll < ApplicationRecord
	belongs_to :city
	belongs_to :dogsisters
	has_many :dogstrolls
	has_many :dogs, through: :dogstrolls
end
