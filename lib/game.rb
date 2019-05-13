require "./lib/game/play"
module Game
  
  def self.play
    Game::Play.new(start_game, play_round, end_game).()
  end

  def self.play_round
    PlayRound.new(
      Terminal::GetInput, 
      claim, 
      show_board
    )
  end
  
  def self.claim
    rules      = Claim::Rules.new
    next_shape = Claim::NextShape.new
    commit     = Claim::Commit.new
  
    Claim.new(rules, next_shape, commit)
  end
  
  def self.show_board
    formatter  = FormatBoard.new
    printer    = Terminal::Print
  
    ShowBoard.new(formatter, printer)
  end
  
  def self.start_game
    setup_board = SetupBoard.new
    Game::Play::Start.new(setup_board, show_board)
  end
  
  def self.end_game
    printer = Terminal::Print
  
    EndGame.new(printer)
  end

end