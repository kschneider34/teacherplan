class Teacher < ApplicationRecord
  # Direct associations

  has_many   :plans,
             :foreign_key => "coach_id",
             :dependent => :destroy

  has_one    :plan,
             :foreign_key => "plan_owner_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
