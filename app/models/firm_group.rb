class FirmGroup < ApplicationRecord
  # Direct associations

  has_many   :contacts,
             :dependent => :nullify

  belongs_to :firm

  # Indirect associations

  # Validations

end
