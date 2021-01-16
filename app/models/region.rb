class Region < ApplicationRecord
  belongs_to :state
  has_many :administration_sites
end
