class CreateProcessTypes < ActiveRecord::Migration
  def change
    create_table :process_types do |t|
      t.string :process_type
      t.integer :high_end
      t.integer :low_end

      t.timestamps

    end
  end
end
