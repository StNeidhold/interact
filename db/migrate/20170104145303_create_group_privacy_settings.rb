class CreateGroupPrivacySettings < ActiveRecord::Migration
  def change
    create_table :group_privacy_settings do |t|
      t.integer :user_group_id
      t.boolean :share_members
      t.boolean :share_contacts
      t.boolean :share_events
      t.boolean :share_interactions

      t.timestamps

    end
  end
end
