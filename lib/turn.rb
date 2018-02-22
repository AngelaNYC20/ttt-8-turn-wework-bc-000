
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, value="X") 
  board[index] = value
end

def turn(board)
   puts "Plase enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
   
   if valid_move?(board,index)
   move(board, index, "O")
   display_board(board)
  
   else 
   turn(board)
   end 
end 


def input_to_index(user_input)
  user_input.to_i - 1
end


def valid_move?(board,index)
  
 if board[index] == " "
   true 
  elsif board[index] == be_between?(0,8)
   true 
  elsif board[index] == 4
   nil || false
  elsif board[index] == be_between?(1,9)
   nil || false
  end 
end 


  
