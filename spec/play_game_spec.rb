class PlayGame
  
  def initialize(start_game)
    @start_game = start_game
  end
  
  def call
    @start_game.()
  end

end

describe PlayGame do

  subject { described_class.new(start_game) }

  let(:start_game) { double(:call => nil) }

  before { subject.() }
  
  it do
    expect(start_game).to have_received(:call)
  end

end