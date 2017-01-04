class CreateUserRecruitingCycles < ActiveRecord::Migration
  def change
    create_table :user_recruiting_cycles do |t|
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.string :name
      t.boolean :is_active

      t.timestamps

    end
  end
end
