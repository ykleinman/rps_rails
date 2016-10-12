class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:
    moves = ["rock", "paper", "scissors"]
    computer_move = moves.sample
    @computer_move = computer_move

    if @user_move == @computer_move
        @result = "It's a tie!"
      elsif @user_move == "rock" && @computer_move == "scissors"
          @result = "You won!"
        elsif @user_move == "rock" && @computer_move == "paper"
          @result = "You lose!"
        elsif @user_move == "paper" && @computer_move == "rock"
          @result = "You win!"
        elsif @user_move == "paper" && @computer_move == "scissors"
          @result = "You lose!"
        elsif @user_move == "scissors" && @computer_move == "rock"
          @result = "You lose!"
        elsif @user_move == "scissors" && @computer_move == "paper"
          @result = "You win!"
        elsif @user_move != moves
          @result = "That doesn't seem to be a valid move."
      end

    # @result = "won"

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
