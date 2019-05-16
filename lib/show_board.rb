# require "./lib/format_board"

class ShowBoard

  def self.build
    new(
      :formatter => FormatBoard.new,
      :printer   => Terminal::Print
    )
  end

  def initialize(formatter:, printer:)
    @formatter = formatter
    @printer   = printer
  end

  def call(board)
    formatted = @formatter.call(board)
    @printer.call(formatted)
  end

end
