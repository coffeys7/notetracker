class CreateFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :folders do |t|
      t.string :title
      t.string :description
      t.json :style
      t.integer :display_format

      t.timestamps
    end
  end
end
