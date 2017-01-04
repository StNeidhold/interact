class InteractionQuestion < ApplicationRecord
  # Direct associations

  belongs_to :question

  belongs_to :interaction

  # Indirect associations

  # Validations

end
