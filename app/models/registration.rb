class Registration < ApplicationRecord
  belongs_to :registration_type
  belongs_to :region
end
