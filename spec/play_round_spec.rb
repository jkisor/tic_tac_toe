class PlayRound
  
  def call(get_input)
    space = get_input.()
  end

end

describe PlayRound do
  
  let(:get_input) { double(:call => nil) }

  it do
    subject.(get_input)
  end

end