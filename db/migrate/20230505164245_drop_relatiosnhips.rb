class DropRelatiosnhips < ActiveRecord::Migration[7.0]
  def change
    drop_table :relatiosnhips do |t|
      t.follower_id :integer, null: false
      t.followed_id :integer, null: false
      t.timestamps null: false
    end
  end
end
