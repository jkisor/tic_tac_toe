require "./lib/game/play"
module Game

  def self.play
    Play.new(
      Play::Start.build, 
      Play::Loop.build, 
      Play::End.build
    ).()
  end

end