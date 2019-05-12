class ShowBoard
  
  def initialize(formatter, printer)
    @formatter = formatter
    @printer   = printer
  end

  def call(board)
    formatted = @formatter.call(board)
    
  end

end

describe ShowBoard do

  subject { described_class.new(formatter, printer) }

  let(:formatter) { double(:call => nil) }
  let(:printer)   { double }

  let(:board) { double }
  
  it do
    subject.call(board)
    expect(formatter).to have_received(:call)
  end

end