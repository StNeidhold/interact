class Interaction < ApplicationRecord
  # Direct associations

  has_many   :interaction_questions,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
