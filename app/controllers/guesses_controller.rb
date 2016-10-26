class GuessesController < ApplicationController

  def index
    if params["first_number"] != nil
      @first_num = params["first_number"]
      @second_num = params["second_number"]
      @third_num = params["third_number"]
    else
      @first_num = 0
      @second_num = 0
      @third_num = 0
    end

    if (@third_num > @second_num and @second_num > @first_num)
      @result = "Yes!"
    else
      @result = "No."
    end

    render("/guesses/index.html.erb")
  end

  def answer
    # params = {"rule" => "what am I??"}
    @user_answer = params["rule"]

    render("/guesses/answer.html.erb")
  end

  def clear

    render("/guesses/index.html.erb")
  end
end
