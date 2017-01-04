class Office < ApplicationRecord
  # Direct associations

  belongs_to :city

  belongs_to :firm

  # Indirect associations

  # Validations

end
