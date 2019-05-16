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
      :get_input  => Terminal::GetInput,
      :claim      => Play::Loop::Claim.build,
      :show_board => ShowBoard.build
    )
  end

end