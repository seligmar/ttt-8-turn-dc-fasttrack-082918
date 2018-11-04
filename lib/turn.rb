
board = [" "," "," "," "," "," "," "," "," "] 

def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, index)
 if 
   index.between?(0, 8) && 
   position_taken?(board, index) == FALSE
   return TRUE
 else 
   return FALSE 
end
end

def position_taken?(board, index)
if 
  board[index] == " "|| board[index] == "" || board[index] == nil 
  return FALSE 
else
  board[index] == "X" || board[index] == "O"
  return TRUE
end 
end

def input_to_index(user_input)
  user_input = user_input.to_i-1
  # puts user_input
end


# puts "Welcome to Tic Tac Toe!"
# display_board(board)

def move(board, index, position = "X")
  # if valid_move?(board, index) == TRUE
   board[index] = position
end


def turn(board) 
  puts "Please enter 1-9:"
  user_input = gets 
  index = input_to_index(user_input)
    if valid_move?(board, index) 
  move(board, index, position = "X")
  puts display_board(board)
else 
  turn(board)
end
end
