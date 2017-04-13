class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|

      t.timestamps
      t.integer :user_id
      t.string :url
    end
  end
end
