class CreateInteractionQuestions < ActiveRecord::Migration
  def change
    create_table :interaction_questions do |t|
      t.integer :interaction_id
      t.integer :question_id

      t.timestamps

    end
  end
end
