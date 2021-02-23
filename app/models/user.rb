class User < ApplicationRecord
  devise :confirmable, :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable, :lockable, :trackable
end
