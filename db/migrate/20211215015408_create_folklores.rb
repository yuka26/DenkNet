class CreateFolklores < ActiveRecord::Migration[6.1]
  def change
    create_table :folklores do |t|
      t.string   :user_id
      t.string   :tel_number
      t.string   :email
      t.string   :password_digest
      t.integer  :gender
      t.string   :screen_name
      t.string   :user_name
      t.string   :furigana
      t.string   :icon
      t.date     :birthday
      t.boolean  :identity
      t.string   :bio
    end
  end
end
