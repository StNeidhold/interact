class UserGroup < ApplicationRecord
  # Direct associations

  has_many   :group_join_requests,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
