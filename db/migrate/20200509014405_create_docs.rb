class CreateDocs < ActiveRecord::Migration[6.0]
  def change
    create_table :docs do |t|
      t.string :title
      t.text :context

      t.timestamps null:false
    end
  end
end
