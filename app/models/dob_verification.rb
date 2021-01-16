class DobVerification < ApplicationRecord
  belongs_to :dob_verification_type
  belongs_to :registration
end
