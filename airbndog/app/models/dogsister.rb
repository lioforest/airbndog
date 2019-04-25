class Dogsister < ApplicationRecord
	belongs_to :city
	has_many :dogs, through: :stroll
	has_many :strolls
end
