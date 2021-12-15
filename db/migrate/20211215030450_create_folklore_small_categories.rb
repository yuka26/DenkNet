class CreateFolkloreSmallCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :folklore_small_categories do |t|
      t.belongs_to  :folklore
      t.belongs_to  :small_category
    end
  end
end
