class AddTotalToHourNotes < ActiveRecord::Migration[5.0]
  def change
    remove_column :todo_notes, :string, :string

    add_column :hour_notes, :total, :integer
  end
end
