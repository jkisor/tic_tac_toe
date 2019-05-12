class ShowBoard
  
  def initialize(formatter, printer)
    @formatter = formatter
    @printer   = printer
  end

  def call(board)
    formatted = @formatter.call(board)
    @printer.call(formatted)
  end

end

describe ShowBoard do

  subject { described_class.new(formatter, printer) }

  let(:formatter) { double(:call => formatted_board) }
  let(:printer)   { double(:call => nil) }

  let(:board) { double }

  let(:formatted_board) { double }

  before { subject.call(board) }
  
  it "formats the board" do
    expect(formatter).to have_received(:call)
  end
  
  it "prints the formatted board" do
    expect(printer).to have_received(:call).with(formatted_board)
  end

end