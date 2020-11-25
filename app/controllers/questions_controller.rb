class QuestionsController < ApplicationController

  def question
  end

  def answer
    @question = params[:question]

    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question != 'I am going to work right now!'
      @answer = "I don't care, get dressed and go to work!"
    else
      @answer = ''
    end
  end
end
