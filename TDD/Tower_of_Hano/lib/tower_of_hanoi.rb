
class TowerOfHanoi

  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new() }

  end

  def populate
    @board[0] += [1,2,3,4]
  end

  def move(start_idx, end_idx)
    disc = @board[start_idx].pop
    @board[end_idx] << disc
  end

end