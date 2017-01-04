class UserGroup < ApplicationRecord
  # Direct associations

  belongs_to :group_privacy_setting

  belongs_to :group_access_setting

  has_many   :user_group_members,
             :dependent => :destroy

  has_many   :group_join_requests,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
