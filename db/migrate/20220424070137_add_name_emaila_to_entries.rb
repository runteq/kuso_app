class AddNameEmailaToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :name, :string
    add_column :entries, :email, :string
  end
end
