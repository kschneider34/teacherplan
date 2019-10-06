class Coach < ApplicationRecord
  # Direct associations

  belongs_to :coach,
             :class_name => "Teacher"

  # Indirect associations

  # Validations

end
