require "./lib/game/play"
module Game

  def self.play
    Play.new(Game::Play::Start.build, loop_game, end_game).()
  end

  def self.loop_game
    Play::Loop.new(
      Terminal::GetInput,
      claim,
      ShowBoard.build
    )
  end

  def self.claim
    Play::Loop::Claim.build
  end

  def self.show_board
    
  end

  def self.end_game
    printer = Terminal::Print

    Game::Play::End.new(printer)
  end

end