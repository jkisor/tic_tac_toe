require "./lib/game/play/start"

describe Game::Play::Start do

  subject { described_class.new(setup_board, show_board) }

  let(:setup_board) { double(:call => board) }
  let(:show_board)  { double(:call => nil) }

  let(:board) { double }

  before do
    @results = subject.()
  end

  it "sets up the board" do
    expect(setup_board).to have_received(:call)
  end

  it "shows the board" do
    expect(show_board).to have_received(:call).with(board)
  end

  it "returns board" do
    expect(@results).to eq(board)
  end

end