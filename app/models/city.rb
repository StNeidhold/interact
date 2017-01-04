class City < ApplicationRecord
  # Direct associations

  has_many   :offices,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
