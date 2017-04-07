class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.string :estado_nome
      t.string :estado_uf

      t.timestamps
    end
  end
end
