class CreateSuccessorSmallCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :successor_small_categories do |t|
      t.belongs_to  :successor
      t.belongs_to  :small_category
    end
  end
end
