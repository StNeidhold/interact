class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.integer :firm_id
      t.integer :city_id
      t.boolean :firm_hq

      t.timestamps

    end
  end
end
