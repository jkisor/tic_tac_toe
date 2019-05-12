class PlayGame
  
  def initialize(start_game, play_round)
    @start_game = start_game
    @play_round = play_round
  end
  
  def call(board)
    @start_game.(board)

    @play_round.(board)
  end

end

describe PlayGame do

  subject { described_class.new(start_game, play_round) }

  let(:start_game) { double(:call => nil) }
  let(:play_round) { double(:call => nil) }

  let(:board) { double(:has_empty_spaces? => true) }

  before { subject.(board) }
  
  it "starts the game" do
    expect(start_game).to have_received(:call).with(board)
  end

  it "plays round" do
    expect(play_round).to have_received(:call).with(board)
  end

end