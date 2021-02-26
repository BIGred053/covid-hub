class UserRole < ApplicationRecord
  has_many :users

  DEVELOPER = 'developer'.freeze
end
