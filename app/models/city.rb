class City < ApplicationRecord
  # Direct associations

  belongs_to :city_country,
             :class_name => "Country",
             :foreign_key => "country_id"

  belongs_to :city_state,
             :class_name => "UsState",
             :foreign_key => "state_id"

  has_many   :offices,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
