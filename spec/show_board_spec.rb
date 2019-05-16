require "./lib/show_board"

describe ShowBoard do

  subject do 
    described_class.new(
      :formatter => formatter, 
      :printer   => printer
    )
  end

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