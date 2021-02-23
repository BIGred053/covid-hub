# Seed Ohio and a couple of regions
ohio = Locality.create(name: 'Ohio')
Locality.create(name: 'Muskingum County', parent_locality_id: ohio.id)
Locality.create(name: 'Franklin County', parent_locality_id: ohio.id)



# Seed Ohio Phase 1B Health Conditions
# QualifyingHealthCondition.create(description: 'Cerebral Palsy')
# QualifyingHealthCondition.create(description: 'Spina Bifida')
# QualifyingHealthCondition.create(description: 'Congenital Heart Disease')
# QualifyingHealthCondition.create(description: 'Type 1 Diabetes')
# QualifyingHealthCondition.create(description: "inherited metabolic disorder")
# QualifyingHealthCondition.create(description: "severe neurological disorder, including epilepsy")
# QualifyingHealthCondition.create(description: "Down syndrome")
# QualifyingHealthCondition.create(description: "fragile X syndrome")
# QualifyingHealthCondition.create(description: "Prader-Willi syndrome")
# QualifyingHealthCondition.create(description: "Turner syndrome")
# QualifyingHealthCondition.create(description: "cystic fibrosis")
# QualifyingHealthCondition.create(description: "severe asthma")
# QualifyingHealthCondition.create(description: "sickle cell anemia")
# QualifyingHealthCondition.create(description: "alpha and beta thalassemia")

# QualifyingHealthCondition.all.each do |condition|
#   StatesQualifyingHealthCondition.create(state_id: state.id, qualifying_health_condition_id: condition.id, state_qualifier: "Phase 1B")
# end