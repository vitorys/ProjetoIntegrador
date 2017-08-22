class AddTestToPessoa < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :pessoa_test, :string
  end
end
