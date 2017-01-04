class CreateFirmGroups < ActiveRecord::Migration
  def change
    create_table :firm_groups do |t|
      t.integer :firm_id
      t.string :group_name

      t.timestamps

    end
  end
end
