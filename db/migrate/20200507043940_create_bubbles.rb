class CreateBubbles < ActiveRecord::Migration[6.0]
  def change
    create_table :bubbles do |t|

      t.timestamps
    end
  end
end
