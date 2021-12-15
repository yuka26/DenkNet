class CreateMatchings < ActiveRecord::Migration[6.1]
  def change
    create_table :matchings do |t|
      t.belongs_to  :folklore
      t.belongs_to  :successor
      t.string      :message
      t.boolean     :is_approve
      t.string      :candidate_datetime
      t.datetime    :phone_call_datetime
    end
  end
end
