class RegistrationFormsQuestion < ApplicationRecord
  belongs_to :registration_form
  belongs_to :question
end
