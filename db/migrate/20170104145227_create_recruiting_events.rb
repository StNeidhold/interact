class CreateRecruitingEvents < ActiveRecord::Migration
  def change
    create_table :recruiting_events do |t|
      t.integer :firm_id
      t.integer :setting_id
      t.string :name
      t.string :location
      t.string :date
      t.time :time
      t.boolean :is_closed

      t.timestamps

    end
  end
end
