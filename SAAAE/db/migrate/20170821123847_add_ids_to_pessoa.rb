class AddIdsToPessoa < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :estado_id, :integer
    add_column :pessoas, :cidade_id, :integer
  end
end
