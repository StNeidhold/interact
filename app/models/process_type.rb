class ProcessType < ApplicationRecord
  # Direct associations

  has_many   :firms,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
