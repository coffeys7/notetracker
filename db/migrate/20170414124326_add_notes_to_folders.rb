class AddNotesToFolders < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :folder, index: true
  end
end
