class StartGame
  
  def initialize(show_board)
    @show_board = show_board
  end

  def call
  
  end

end

describe StartGame do
  
  subject { described_class.new(show_board) }

  let(:show_board) { double(:call => nil) }

  it do

  end

end