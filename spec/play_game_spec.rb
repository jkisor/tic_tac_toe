class PlayGame
  
  def initialize(start_game)
    @start_game = start_game
  end
  
  def call(board)
    @start_game.(board)
  end

end

describe PlayGame do

  subject { described_class.new(start_game) }

  let(:start_game) { double(:call => nil) }

  let(:board) { double }

  before { subject.(board) }
  
  it do
    expect(start_game).to have_received(:call).with(board)
  end

end