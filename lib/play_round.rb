class PlayRound
  
  def call(board, get_input, claim, show_board)
    space = get_input.()

    new_board = claim.(board, space)
    
    show_board.(new_board)
  end

end
