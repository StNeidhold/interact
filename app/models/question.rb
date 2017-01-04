class Question < ApplicationRecord
  # Direct associations

  has_many   :user_question_banks,
             :dependent => :destroy

  has_many   :interaction_questions,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
