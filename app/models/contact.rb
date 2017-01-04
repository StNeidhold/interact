class Contact < ApplicationRecord
  # Direct associations

  belongs_to :banking_title

  belongs_to :firm_group

  belongs_to :firm

  has_many   :interactions

  # Indirect associations

  # Validations

end
