class StartGame
  
  def initialize(show_board)
    @show_board = show_board
  end

  def call(board)
    @show_board.(board)
  end

end
