class CreatePersonalHodildaySettings < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_hodilday_settings do |t|
      t.integer :user_id
      t.datetime :holiday
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
