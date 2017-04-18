class CreateTodoNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_notes do |t|
      t.string :title
      t.string :string
      t.string :additional_info
      t.string :string
      t.string :priority
      t.string :integer
      t.string :color
      t.string :string
      t.string :completed
      t.string :boolean

      t.timestamps
    end
  end
end
