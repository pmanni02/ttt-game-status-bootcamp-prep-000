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
     (comb[0]===comb[1]&&comb[1]===comb[2]&&comb[0]===comb[2]) && (comb[0]==="X" || comb[0]==="O")
  end
end

def full?(board)

end
