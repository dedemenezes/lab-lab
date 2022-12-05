class UserAnswersController < ApplicationController
  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    # binding.break
    if @user_answer.save
      if @user_answer.answer.question == Question.last
        redirect_to root_path
      else
        redirect_to question_path(@user_answer.answer.question.id + 1)
      end
    else
      render 'questions/index', status: :unprocessable_entity
    end
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:answer_id)
  end
end
