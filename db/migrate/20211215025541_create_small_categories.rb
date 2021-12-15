class CreateSmallCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :small_categories do |t|
      t.belongs_to  :large_category
      t.string   :name
    end
  end
end
