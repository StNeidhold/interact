class RecruitingEvent < ApplicationRecord
  # Direct associations

  belongs_to :setting

  has_many   :interactions

  has_many   :event_rsvps,
             :dependent => :destroy

  belongs_to :firm

  # Indirect associations

  # Validations

end
