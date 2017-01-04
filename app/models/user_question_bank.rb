class UserQuestionBank < ApplicationRecord
  # Direct associations

  belongs_to :question

  belongs_to :user

  # Indirect associations

  # Validations

end
