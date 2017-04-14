class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :annotation
      t.string :subtitle
      t.string :body_content
      t.string :icon
      t.string :color

      t.timestamps
    end
  end
end
