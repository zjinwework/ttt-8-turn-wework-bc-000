def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board,index)
  index >= 0 && index <= 8 && (! (board[index] == "X" || board[index] == "O"))
end 

def move(board,index,value = "X")
  board[index] = value
end 

def turn(board)
  valid = false
  until valid
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    valid = valid_move?(board,index)
  end
  move(board,index) 
  display_board(board)
end