class RegistrationForm < ApplicationRecord
  belongs_to :locality
  has_many :questions, through: :registration_forms_questions
  has_many :registrations
end
