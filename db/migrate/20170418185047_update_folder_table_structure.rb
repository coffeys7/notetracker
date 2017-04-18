class UpdateFolderTableStructure < ActiveRecord::Migration[5.0]
  def change

    # Remove style & display_format columns
    remove_column :folders, :style, :json
    remove_column :folders, :display_format, :integer

    # Add color note_type column
    add_column :folders, :note_type, :integer

  end
end
