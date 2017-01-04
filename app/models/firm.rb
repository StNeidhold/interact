class Firm < ApplicationRecord
  # Direct associations

  has_many   :offices,
             :dependent => :destroy

  has_many   :firm_groups,
             :dependent => :destroy

  has_many   :target_firms,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
