class CreateFirmRecruitingCycles < ActiveRecord::Migration
  def change
    create_table :firm_recruiting_cycles do |t|
      t.integer :firm_id
      t.date :first_round_start
      t.string :superday_start

      t.timestamps

    end
  end
end
