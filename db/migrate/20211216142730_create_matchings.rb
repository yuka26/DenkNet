class CreateMatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :matchings do |t|
      t.references :folklore, foreign_key: { to_table: :users }
      t.references :successor, foreign_key: { to_table: :users }

      t.string :message
      t.boolean :approve

      t.timestamps
    end
  end
end
