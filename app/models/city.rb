class City < ApplicationRecord
  # Direct associations

  belongs_to :city_state,
             :class_name => "UsState",
             :foreign_key => "state_id"

  has_many   :offices,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
