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
