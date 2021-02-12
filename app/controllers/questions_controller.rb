class QuestionsController < ApplicationController

  before_action :find_test, only: %i[index create]
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_record_not_found

  def index
    render json: { questions: @test.questions.pluck(:id, :body) }
  end

  def show
    render json: { question: Question.find(params[:id]).inspect}
  end

  def create
    @question = @test.questions.build(question_params)
    if @question.save
      redirect_to @question
    else
      render "new"
    end
  end

  def destroy
    Question.find(params[:id]).delete

    render plain: 'Question was deleted.'
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body);
  end

  def rescue_with_record_not_found
    render plain: 'Not found!'
  end
end
