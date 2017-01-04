class CreateTargetFirms < ActiveRecord::Migration
  def change
    create_table :target_firms do |t|
      t.integer :firm_id
      t.integer :user_id

      t.timestamps

    end
  end
end
