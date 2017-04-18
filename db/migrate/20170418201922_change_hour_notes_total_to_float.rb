class ChangeHourNotesTotalToFloat < ActiveRecord::Migration[5.0]
  def change
    remove_column :hour_notes, :total, :integer
    add_column :hour_notes, :total, :float
  end
end
