class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.date :attendance_date
      t.string :type
      t.datetime :in_time
      t.datetime :out_time
      t.decimal :break_term
      t.string :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
