class Firm < ApplicationRecord
  # Direct associations

  has_many   :target_firms,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
