class QuestionsController < ApplicationController
  before_action :set_question_types, only: %i[new create]

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      # Do summat
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(
      :question_type_id,
      :prompt,
      :verification_required,
      :verification_preferred,
      :required_question
    )
  end

  def set_question_types
    @question_types = QuestionType.all
  end
end
