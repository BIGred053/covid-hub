class RegistrationDatum < ApplicationRecord
  belongs_to :question
  belongs_to :registration
  has_one :verification
end
