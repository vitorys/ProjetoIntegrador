class CreateCidades < ActiveRecord::Migration[5.0]
  def change
    create_table :cidades do |t|
      t.string :cidade_nome
        

      t.timestamps
    end
  end
end
