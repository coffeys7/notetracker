class AddNoteTypesToFolders < ActiveRecord::Migration[5.0]
  def change

    add_reference :hour_notes, :folder, index: true
    add_reference :todo_notes, :folder, index: true

  end
end
