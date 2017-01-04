class CreateGroupAccessSettings < ActiveRecord::Migration
  def change
    create_table :group_access_settings do |t|
      t.string :acessibility
      t.string :visibility

      t.timestamps

    end
  end
end
