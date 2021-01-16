class Schedule < ApplicationRecord
  belongs_to :administration_site
  has_many :appointments
end
