def display_board(board)
  puts " #{board[1]} |  #{board[2]} | #{board[3]}"
  puts "-----------"
  puts " #{board[4]} |  #{board[5]} | #{board[6]}"
  puts "-----------"
  puts " #{board[7]} |  #{board[8]} | #{board[9]}"
end

def position_taken?(board, index)
 if board[index] == "X" || board[index] == "O"
   return true
 else
   return false
 end
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif position_taken(board, index)
    return false
  else
    return true
  end
end

def input_to_index(input)
  return input.to_i
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
end
