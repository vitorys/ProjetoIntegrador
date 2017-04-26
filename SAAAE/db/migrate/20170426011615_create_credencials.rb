class CreateCredencials < ActiveRecord::Migration[5.0]
  def change
    create_table :credencials do |t|
      t.string :credencial_senha
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
