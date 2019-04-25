class City < ApplicationRecord

	 has_many :dogs
	 has_many :dogsisters
	 has_many :strolls
end
