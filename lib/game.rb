require "./lib/game/play"
module Game

  def self.play
    Play.new(
      Game::Play::Start.build, 
      loop_game, 
      Game::Play::End.build
    ).()
  end

  def self.loop_game
    Play::Loop.new(
      Terminal::GetInput,
      Play::Loop::Claim.build,
      ShowBoard.build
    )
  end

end