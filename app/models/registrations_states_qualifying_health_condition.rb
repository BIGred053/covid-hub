class RegistrationsStatesQualifyingHealthCondition < ApplicationRecord
  belongs_to :registration
  belongs_to :states_qualifying_health_condition
end
