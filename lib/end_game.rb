class EndGame

  def initialize(printer)
    @printer = printer
  end

  def call
    @printer.("Game over. Thanks for playing.")
  end

end