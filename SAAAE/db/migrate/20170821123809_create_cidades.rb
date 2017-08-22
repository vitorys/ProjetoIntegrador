class CreateCidades < ActiveRecord::Migration[5.0]
  def change
    create_table :cidades do |t|
      t.string :nome
      t.integer :estado_id

      t.timestamps
    end
  end
end
