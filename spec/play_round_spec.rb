class PlayRound
  
  def call(get_input)
    space = get_input.()
  end

end

describe PlayRound do
  
  let(:get_input) { double(:call => nil) }
    
  before { subject.(get_input) }

  it do
    expect(get_input).to have_received(:call)
  end

end