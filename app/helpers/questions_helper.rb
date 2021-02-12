module QuestionsHelper
  def question_header(question, form_type)
    case form_type
    when :create
      "Create new #{question.test.title} question"
    when :edit
      "Edit #{question.test.title} question"
    end
  end
end
