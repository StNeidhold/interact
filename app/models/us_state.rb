class UsState < ApplicationRecord
  # Direct associations

  has_many   :cities,
             :foreign_key => "state_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
