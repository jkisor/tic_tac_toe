require "./lib/game/play"

describe Game::Play do

  subject do
    described_class.new(
      :start_game => start_game, 
      :play_round => play_round, 
      :end_game   => end_game
    )
  end

  let(:start_game) { double(:call => board) }
  let(:play_round) { double(:call => next_board) }
  let(:end_game)   { double(:call => nil) }

  let(:board)      { double(:done? => false) }
  let(:next_board) { double(:done? => true) }

  before { subject.() }

  it "starts the game" do
    expect(start_game).to have_received(:call)
  end

  it "plays round" do
    expect(play_round).to have_received(:call).with(board)
  end

  it "ends the game" do
    expect(end_game).to have_received(:call)
  end

end