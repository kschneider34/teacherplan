class Plan < ApplicationRecord
  # Direct associations

  belongs_to :plan_owner,
             :class_name => "Teacher"

  # Indirect associations

  # Validations

end
