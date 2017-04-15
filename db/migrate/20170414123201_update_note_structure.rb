class UpdateNoteStructure < ActiveRecord::Migration[5.0]
  def change
    remove_column :notes, :annotation, :string
    remove_column :notes, :body_content, :string
    remove_column :notes, :subtitle, :string

    add_column :notes, :content, :string
    add_column :notes, :additional, :string
  end
end
