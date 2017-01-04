class GroupAccessSetting < ApplicationRecord
  # Direct associations

  has_many   :user_groups,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
