class ShowBoard
  
  def initialize(formatter, printer)
    @formatter = formatter
    @printer   = printer
  end

  def call
  end
  
end

describe ShowBoard do

  subject { described_class.new(formatter, printer) }

  let(:formatter) { double }
  let(:printer)   { double }
  
  it do
    subject.call
  end

end