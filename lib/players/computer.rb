require 'pry'

module Players

class Computer < Player  

    def move(board)
        if board.cells[5] == " "
            "5"
        elsif board.cells[1] == " "
            "1"
        elsif  board.cells[2] == " "
            "2"
        elsif board.cells[9] == " "
                "9"
        elsif board.cells[3] == " "
                "3"
        elsif board.cells[7] == " "
            "7"
        elsif board.cells[8] == " "
            "8"
        elsif board.cells[4] == " "
            "4"
        elsif board.cells[6] == " "
            "6"
        end 
# if the computer is going first, move on the middle square or if the computer is going second - move on the middle square if it isnt taken
# if the computer is going second and the middle square is taken, take the upper left corner
# if the computer went first (took the middle), take a corner square with the second move
# if the computer went second (and was able to take the middle) and the other player has occupied opposing corner squares, blow up the attempted trap by taking a side square.
# after this, keep checking the win combinations to see if there are any combos with 2 spaces filled with the same token and a third empty space
  # check for combos winnable by the computer
  # then check for combinations the other player might win that could be blocked
# If none of the WIN_COMBINATIONS patterns have two squares taken by the same token and a third empty square, play into the first open square found, first checking corners and then checking sides.
    end
    end
end