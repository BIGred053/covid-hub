class User < ApplicationRecord
  belongs_to :locality
  belongs_to :user_role
  devise :confirmable, :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable, :lockable, :trackable
end
