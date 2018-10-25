class Api::V1::AnsweredQuestionsController < ApplicationController
  def index
    @answeredquestions = AnsweredQuestion.all

    render json: @answeredquestions
  end

  def create
    @answeredquestion = AnsweredQuestion.create(answeredquestion_params)

    render json: @answeredquestion, status: :accepted
  end

  def update
    @answeredquestion.update(answeredquestion_params)
    if @answeredquestion.save
      render json: @answeredquestion, status: :accepted
    else
      render json: {errors: @answeredquestion.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def answeredquestion_params
    params.permit(:name, :user_id, :question_id, :correct_answer)
  end

  def find_answeredquestion
    @answeredquestion = AnsweredQuestion.find(params[:id])
  end
end
