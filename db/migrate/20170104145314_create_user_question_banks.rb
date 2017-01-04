class CreateUserQuestionBanks < ActiveRecord::Migration
  def change
    create_table :user_question_banks do |t|
      t.integer :user_id
      t.integer :question_id

      t.timestamps

    end
  end
end
