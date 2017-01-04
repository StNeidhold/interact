class Country < ApplicationRecord
  # Direct associations

  has_many   :cities,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
