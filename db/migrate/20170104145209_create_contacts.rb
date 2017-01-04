class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :banking_title_id
      t.integer :firm_id
      t.integer :gender_id
      t.integer :college_id
      t.integer :business_school_id
      t.integer :firm_group_id

      t.timestamps

    end
  end
end
