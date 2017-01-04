class CreateUserPrivacySettings < ActiveRecord::Migration
  def change
    create_table :user_privacy_settings do |t|
      t.integer :user_id
      t.boolean :share_contacts
      t.boolean :share_interactions
      t.boolean :share_events

      t.timestamps

    end
  end
end
