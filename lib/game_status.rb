# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]]

def won?(board)
  for each win_combination in WIN_COMBINATIONS
   win_1 = win_combination[0]
   win_2 = win_combination[1]
   win_3 = win_combination[2]
   if board[win_1] == "X" && board[win_2] == "X" && board[win_3] == "X"
     return win_combination
   elsif board[win_1] == "O" && board[win_2] == "O" && board[win_3] == "O"
    return win_combination
  else
    return
     