class QuestionsController < ApplicationController

  def index
    render json: { questions: Test.find(params[:id]).questions.pluck(:id, :body) }
  end

  def show
    render json: { question: Question.find(params[:id]).inspect}
  end

  def new
  end

  def delete
  end

  def create
    question = Question.new(question_params)
    question.test_id = params[:id]
    question.save

    render json: { result: question.inspect}
  end

  def destroy
    Question.find(params[:id]).destroy

    render plain: 'Question was deleted'
  end

  private

  def question_params
    params.require(:question).permit(:body);
  end

end
