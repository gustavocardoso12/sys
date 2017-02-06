class CreateMercs < ActiveRecord::Migration[5.0]
  def change
    create_table :mercs do |t|
      t.integer :TipoMerc_id
      t.string :merc_nome
      t.integer :qtde
      t.float :preco
      t.integer :TipoNeg_id

      t.timestamps
    end
  end
end
