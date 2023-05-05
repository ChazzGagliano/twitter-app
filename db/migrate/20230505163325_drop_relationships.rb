class DropRelationships < ActiveRecord::Migration[7.0]
  def change
        drop_table :relationships do |t|
          t.integer :follower_id, null: false
          t.integer :leader_id, null: false
          t.timestamps null: false
    end
  end
end
