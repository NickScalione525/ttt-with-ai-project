require 'pry'

class Board
    attr_accessor :board
    attr_reader :cells
    

    def initialize
        @board = board || self.reset!
     end

     def cells=(cells)
        @cells = cells
         end


     def reset!
        self.cells = []
        self.cells = Array.new(9, " ")
        
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    
    end

    def position(input)
        @cells[input.to_i - 1]
    end

    def full?
        if !self.cells.include? (" ")
            true
        else
            false
        end
    end
    def turn_count
        @cells.count{|token| token == "X" || token == "O"}
    end

    def taken?(input)
        if self.position(input) != " "
            true
        else
            false
        end
    end
    def valid_move?(input)
        if self.cells[input.to_i - 1] == " " && [0,1,2,3,4,5,6,7,8].include?(input.to_i - 1)
            true
        else
            false
    end
end
    def update(input, player)
        self.cells[input.to_i - 1] = player.token
    end

end