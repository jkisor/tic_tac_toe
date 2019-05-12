require "./lib/board"

describe Board do
  subject { described_class.new("-"*9) }

  let(:data) { "-" * 9 }

  it "has data" do
    expect(subject.data).to eq(data)
  end

end