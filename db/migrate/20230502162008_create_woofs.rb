class CreateWoofs < ActiveRecord::Migration[7.0]
  def change
    create_table :woofs do |t|
      t.integer :user_id
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
