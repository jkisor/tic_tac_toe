class StartGame
  
  def initialize(show_board)
    @show_board = show_board
  end

  def call(board)
    @show_board.(board)
  end

end

describe StartGame do

  subject { described_class.new(show_board) }

  let(:show_board) { double(:call => nil) }

  let(:board) { double }

  before { subject.(board) }

  it do
    expect(show_board).to have_received(:call).with(board)
  end

end