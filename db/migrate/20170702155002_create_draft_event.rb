class CreateDraftEvent < ActiveRecord::Migration[5.0]
  def change
    create_table :draft_events do |t|
      t.string :title, null: false
      t.string :public_email
      t.string :time_zone
    end
  end
end
