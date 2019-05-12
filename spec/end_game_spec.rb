class EndGame

  def initialize(printer)
    @printer = printer
  end

  def call
    @printer.("Game over. Thanks for playing.")
  end

end

describe EndGame do
  
  subject { described_class.new(printer) }

  let(:printer) { double(:call => nil) }

  before { subject.() }

  it "prints a message" do
    expect(printer).to have_received(:call).with("Game over. Thanks for playing.")
  end

end