class College < ApplicationRecord
  # Direct associations

  has_many   :contacts,
             :dependent => :nullify

  has_many   :users,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
