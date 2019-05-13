require "./lib/play_game"

describe PlayGame do

  subject { described_class.new(start_game, play_round, end_game) }

  let(:start_game) { double(:call => board) }
  let(:play_round) { double(:call => next_board) }
  let(:end_game)   { double(:call => nil) }

  let(:board) { double(:has_empty_spaces? => true) }
  let(:next_board) { double(:has_empty_spaces? => false) }

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