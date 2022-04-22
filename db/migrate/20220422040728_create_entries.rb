class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.text :description
      t.text :title

      t.timestamps
    end
  end
end
