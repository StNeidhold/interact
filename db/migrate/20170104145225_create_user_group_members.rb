class CreateUserGroupMembers < ActiveRecord::Migration
  def change
    create_table :user_group_members do |t|
      t.integer :user_id
      t.integer :user_group_id
      t.boolean :is_admin

      t.timestamps

    end
  end
end
