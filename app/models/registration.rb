class Registration < ApplicationRecord
  belongs_to :registration_form
  has_one :registration_consent
  has_many :registration_data
end
