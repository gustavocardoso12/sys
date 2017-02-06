class Merc < ApplicationRecord
	belongs_to :TipoMerc
	belongs_to :TipoNeg
	validates_presence_of :merc_nome
	validates_presence_of :TipoMerc_id
	validates_presence_of :qtde
	validates_presence_of :preco
	validates_presence_of :TipoNeg_id
	validates_numericality_of :TipoMerc_id
	validates_numericality_of :qtde
	validates_numericality_of :preco
	validates_numericality_of :TipoNeg_id
		validates_uniqueness_of :TipoMerc_id
end
