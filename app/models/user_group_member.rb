class UserGroupMember < ApplicationRecord
  # Direct associations

  belongs_to :user_group

  belongs_to :user

  # Indirect associations

  # Validations

end
