require "./lib/game/play/loop"

describe Game::Play::Loop do

  subject do 
    described_class.new(
      :get_input  => get_input, 
      :claim      => claim, 
      :show_board => show_board
    )
  end

  let(:get_input)  { double(:call => space) }
  let(:claim)      { double(:call => new_board) }
  let(:show_board) { double(:call => nil) }

  let(:board) { double }
  let(:space) { double }

  let(:new_board) { double }

  before { @results = subject.(board) }

  it "gets input" do
    expect(get_input).to have_received(:call)
  end

  it "claims space" do
    expect(claim).to have_received(:call).with(board, space)
  end

  it "shows board" do
    expect(show_board).to have_received(:call).with(new_board)
  end

  it "returns new board" do
    expect(@results).to eq(new_board)
  end

end