class UpdateNotesTableStructure < ActiveRecord::Migration[5.0]
  def change

    # Remove icon, additional columns from notes table
    remove_column :notes, :icon, :string
    remove_column :notes, :additional, :string

    # Add fields column to notes table
    add_column :notes, :fields, :json

  end
end
