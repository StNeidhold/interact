class Interaction < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :interaction_questions,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
