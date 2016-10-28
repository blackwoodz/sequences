class GuessesController < ApplicationController

  def index
    if params["first_number"] != nil
      g = Guess.new
      g.first_num = params["first_number"]
      g.second_num = params["second_number"]
      g.third_num = params["third_number"]
      g.save
    end

    @list = Guess.all

    render("/guesses/index.html.erb")
  end

  def answer
    # params = {"rule" => "what am I??"}
    @user_answer = params["rule"]

    render("/guesses/answer.html.erb")
  end

  def clear
    Guess.delete_all
    render("/guesses/index.html.erb")
  end
end
