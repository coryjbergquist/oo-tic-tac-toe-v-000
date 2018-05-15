class TicTacToe
  def initialize(board = nil)
    @board = board || [" ", " ", " ", " ", " ", " ", " ", " ", " "]
   def board 
     @board
   end
  end
  
  WIN_COMBINATIONS = [[0,1,2],
  [3,4,5],[6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
  
  def display_board
    
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} 
-----------
 #{@board[3]} | #{@board[4]} | #{@board[5]} 
-----------
 #{@board[6]} | #{@board[7]} | #{@board[8]} "
 end


def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, position, value)

  array[position] = value
end

def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def valid_move?(board, index)
    index.between?(0, 8) && !position_taken?(board, index) 
 end
 
 def turn(board)
  puts "Please enter 1-9:"
 user_input = gets.strip
 index = input_to_index(user_input)
 value = current_player(board)
 if valid_move?(board, index) == true
   #binding.pry
 display_board(board)
 else 
   turn(board)
  end
end

def turn_count
  board.count { |x| x !=" "}

end
