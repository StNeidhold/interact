class User < ApplicationRecord
  # Direct associations

  belongs_to :college

  belongs_to :business_school

  has_many   :interactions,
             :dependent => :destroy

  has_many   :event_rsvps,
             :dependent => :destroy

  has_many   :user_alerts,
             :dependent => :destroy

  has_many   :user_question_banks,
             :dependent => :destroy

  has_many   :target_firms,
             :dependent => :destroy

  has_many   :recruiting_cycles,
             :class_name => "UserRecruitingCycle",
             :dependent => :destroy

  has_many   :user_group_members,
             :dependent => :destroy

  has_many   :group_join_requests,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
