class QuestionController < ApplicationController
  def answer
    @query = params[:query]
    @result = stupid_coach(@query)

  end

  def ask
  end

  def stupid_coach(message)

    if message != ""

      if message.upcase == message && message.include?("?") == false
        @result = "I get your motivation. I don't care, get dressed and go to work!"
      elsif message.upcase != message && message.include?("?") == false
        @result = "I don't care, get dressed and go to work!"
      elsif message.upcase == message && message.include?("?")
        @result = "I get your motivation. Silly question, get dressed and go to work!"
      elsif message.upcase != message && message.include?("?")
        @result = " Silly question, get dressed and go to work!"
      end

    else
       @result = "No Input detected"
    end


  end

end
