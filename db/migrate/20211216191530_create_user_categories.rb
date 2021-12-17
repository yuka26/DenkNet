class CreateUserCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_categories do |t|
      t.references :user, foreign_key: { to_table: :users }
      t.references :category, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
