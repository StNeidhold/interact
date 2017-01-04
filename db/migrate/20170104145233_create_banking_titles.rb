class CreateBankingTitles < ActiveRecord::Migration
  def change
    create_table :banking_titles do |t|
      t.integer :firm_id
      t.string :title

      t.timestamps

    end
  end
end
