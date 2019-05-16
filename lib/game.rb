require "./lib/game/play"
module Game

  def self.play
    Play.new(
      Game::Play::Start.build, 
      Play::Loop.build, 
      Game::Play::End.build
    ).()
  end

end