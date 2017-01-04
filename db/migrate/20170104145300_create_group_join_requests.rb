class CreateGroupJoinRequests < ActiveRecord::Migration
  def change
    create_table :group_join_requests do |t|
      t.integer :user_group_id
      t.integer :user_id

      t.timestamps

    end
  end
end
