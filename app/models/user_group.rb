class UserGroup < ApplicationRecord
  # Direct associations

  has_many   :user_group_members,
             :dependent => :destroy

  has_many   :group_join_requests,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
