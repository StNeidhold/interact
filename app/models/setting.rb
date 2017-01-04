class Setting < ApplicationRecord
  # Direct associations

  has_many   :interactions

  has_many   :recruiting_events,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
