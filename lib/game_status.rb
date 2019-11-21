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
        [2,4,6],
]

def won?(board)
  WIN_COMBINATIONS.each do |combinations|
    index = combinations[0]
    index1 = combinations[1]
    index2 = combinations[2]

    position1 = board[index]
    position2 = board[index1]
    position3 = board[index2]

    if position1 == "X" && position2 == "X" && position3 == "X"
      return combinations
    elsif position1 == "0" && position2 == "0" && position3 == "0"
      return combinations
    else return false
    end
  end
