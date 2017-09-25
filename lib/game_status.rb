# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |comb|
    puts comb
    win_comb = comb
    if(board[0]===board[1]&&board[0]===board[2])&&(board[0] != " ")
      return win_comb
    end
  end
  return false
end

def full?(board)
  i = 0
  full = true
  while i < 10
    if board[i] === " "
      full = false
    end
    i += 1
  end
  return full
end
