class Question < ApplicationRecord
  belongs_to :question_type
  has_many :answer_options
  has_many :registration_data
  has_many :registration_forms, through: :registration_forms_questions
end
