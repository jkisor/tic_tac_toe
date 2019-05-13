require "./lib/game/play"
module Game
  
  def self.play
    Play.new(start_game, loop_game, end_game).()
  end

  def self.loop_game
    Play::Loop.new(
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
  
    Game::Play::End.new(printer)
  end

end