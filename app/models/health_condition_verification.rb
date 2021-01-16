class HealthConditionVerification < ApplicationRecord
  belongs_to :registration
  belongs_to :user
end
