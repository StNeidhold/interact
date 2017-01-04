class CreateUserAlerts < ActiveRecord::Migration
  def change
    create_table :user_alerts do |t|
      t.integer :user_id
      t.string :alert_text

      t.timestamps

    end
  end
end
