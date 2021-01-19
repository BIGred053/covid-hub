class StatesQualifyingHealthCondition < ApplicationRecord
  belongs_to :state
  belongs_to :qualifying_health_condition
end
