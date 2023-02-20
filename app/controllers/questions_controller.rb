class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:answer]
    stop_message = 'I am going to work'
    @coach = if @answer.include? '?'
               'Silly question, get dressed and go to work!'
             elsif @answer == stop_message
               'Great!'
             else
               "I don't care, get dressed and go to work!"
             end
  end
end
