class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :stem
      t.string :tags

      t.timestamps

    end
  end
end
