class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :user_id
      t.integer :contact_id
      t.integer :setting_id
      t.date :date
      t.integer :recruiting_event_id
      t.time :time
      t.string :location
      t.string :notes

      t.timestamps

    end
  end
end
