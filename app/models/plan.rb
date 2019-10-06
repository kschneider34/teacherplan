class Plan < ApplicationRecord
  # Direct associations

  belongs_to :coach,
             :class_name => "Teacher",
             :counter_cache => true

  belongs_to :plan_owner,
             :class_name => "Teacher"

  # Indirect associations

  # Validations

end
