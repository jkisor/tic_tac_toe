class EndGame

  def initialize(printer)
    @printer = printer
  end

  def call
    @printer.()
  end

end

describe EndGame do
  
  subject { described_class.new(printer) }

  let(:printer) { double(:call => nil) }

  it do
    subject.()
    expect(printer).to have_received(:call)
  end

end