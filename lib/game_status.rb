# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #Left diagonal
  [2,4,6]  #Right diagonal
]

board[2] // "X"
board[4] // "X"
board[6] // "X"

def empty_board?
  board.any? {|position| !position == "X" && !position == "O"}
end
#
def won?(board)
  
WIN_COMBINATIONS.each |win_combination| # [0, 1, 2]
  win_index_1 = win_combination[0] # 0 
  win_index_2 = win_combination[1] # 1
  win_index_3 = win_combination[2] # 2
  
  position_1 = board[win_index_1] # "X"
  position_2 = board[win_index_2] # "X"
  position_3 = board[win_index_3] # "X"
  

  # position_1 = board[win_index_1] # load the value of the board at win_index_1
  # position_2 = board[win_index_2] # load the value of the board at win_index_2
  # position_3 = board[win_index_3] # load the value of the board at win_index_3
  #
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
  else
    false
  end

end
