class RegistrationsAppointment < ApplicationRecord
  belongs_to :registration
  belongs_to :appointment
  belongs_to :appointment_type
end
