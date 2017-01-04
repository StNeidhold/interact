class Interaction < ApplicationRecord
  # Direct associations

  belongs_to :setting

  belongs_to :recruiting_event

  belongs_to :contact

  belongs_to :user

  has_many   :interaction_questions,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
