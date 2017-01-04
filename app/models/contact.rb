class Contact < ApplicationRecord
  # Direct associations

  belongs_to :gender

  belongs_to :college

  belongs_to :business_school

  belongs_to :banking_title

  belongs_to :firm_group

  belongs_to :firm

  has_many   :interactions

  # Indirect associations

  # Validations

end
