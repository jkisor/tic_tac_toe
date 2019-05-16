require "./lib/game/play"
module Game

  def self.play
    Play.new(
      :start_game => Play::Start.build, 
      :play_round => Play::Loop.build, 
      :end_game   => Play::End.build
    ).()
  end

end