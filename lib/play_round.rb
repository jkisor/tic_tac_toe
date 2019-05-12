class PlayRound
  
  def initialize(get_input, claim, show_board)
    @get_input  = get_input
    @claim      = claim
    @show_board = show_board
  end

  def call(board, get_input, claim, show_board)
    space = get_input.()

    new_board = claim.(board, space)
    
    show_board.(new_board)
  end

end
