class PlayRound
  
  def call(board, get_input, claim, show_board )
    space = get_input.()
    claim.(board, space)
  end

end

describe PlayRound do
  
  let(:get_input)  { double(:call => space) }
  let(:claim)      { double(:call => nil) }
  let(:show_board) { double(:call => nil) }

  let(:board) { double }
  let(:space) { double }

  before { subject.(board, get_input, claim, show_board) }

  it "gets input" do
    expect(get_input).to have_received(:call)
  end

  it "claims space" do
    expect(claim).to have_received(:call).with(board, space)
  end

end