class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :name
      t.integer :process_type_id

      t.timestamps

    end
  end
end
