class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.integer :group_access_setting_id
      t.string :name
      t.string :description
      t.integer :group_privacy_setting_id

      t.timestamps

    end
  end
end
