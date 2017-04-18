class UpdateHourNotesStructure < ActiveRecord::Migration[5.0]
  def change

    # Hour notes
    remove_column :hour_notes, :day, :string
    add_column :hour_notes, :day, :datetime

    remove_column :hour_notes, :datetime, :string

    remove_column :hour_notes, :start_time, :string
    add_column :hour_notes, :start_time, :datetime

    remove_column :hour_notes, :end_time, :string
    add_column :hour_notes, :end_time, :datetime

    remove_column :hour_notes, :completed, :string
    add_column :hour_notes, :completed, :boolean

    remove_column :hour_notes, :boolean, :string

    remove_column :hour_notes, :string, :string


    # Todo notes
    remove_column :todo_notes, :priority, :string
    add_column :todo_notes, :priority, :integer

    remove_column :todo_notes, :completed, :string
    add_column :todo_notes, :completed, :boolean

    remove_column :todo_notes, :integer, :string

    remove_column :todo_notes, :boolean, :string

  end
end
