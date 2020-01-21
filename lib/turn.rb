
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def position_taken?(array, index)
  if (array[index] == " " || array[index] == "" || array[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(array, index)
  if index.between?(0, 8) == false
    return false
  elsif position_taken?(array, index)
    return false
  else
    return true
  end
end

def move(board, index, token = 'X')
  if valid_move?(board, index)
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    puts 'valid move'
    move(board, index, token = 'X')
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
  display_board(board)
end
