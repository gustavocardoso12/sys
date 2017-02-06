class TipoNeg < ApplicationRecord
	has_many :Merc
		validates_presence_of :descricao
			validates_uniqueness_of :descricao
end
