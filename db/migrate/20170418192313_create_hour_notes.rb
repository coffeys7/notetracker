class CreateHourNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :hour_notes do |t|
      t.string :day
      t.string :datetime
      t.string :start_time
      t.string :datetime
      t.string :end_time
      t.string :datetime
      t.string :completed
      t.string :boolean
      t.string :additional_info
      t.string :string

      t.timestamps
    end
  end
end
