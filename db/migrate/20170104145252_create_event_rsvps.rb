class CreateEventRsvps < ActiveRecord::Migration
  def change
    create_table :event_rsvps do |t|
      t.integer :recruiting_event_id
      t.integer :user_id

      t.timestamps

    end
  end
end
