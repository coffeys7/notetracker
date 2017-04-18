class MoveFieldsColumnFromNotesToFolders < ActiveRecord::Migration[5.0]
  def change
    add_column :folders, :fields, :json
  end
end
