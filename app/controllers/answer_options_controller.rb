class AnswerOptionsController < ApplicationController
  def new
    @answer = AnswerOption.new
  end

  def create
    @answer = AnswerOption.new(answer_option_params)

    if @answer.save
      # Do something hotwire-y
    else
      render :new
    end
  end

  private

  def answer_option_params
    params.require(:answer_option).permit(:question_id, :display_text, :value)
  end
end
