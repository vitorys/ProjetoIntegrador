class CreateObjetivos < ActiveRecord::Migration[5.0]
  def change
    create_table :objetivos do |t|
      t.string :motivo

      t.timestamps
    end
  end
end
