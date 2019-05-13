require "./lib/board"

class SetupBoard

  def call
    Board.new("-"*9)
  end

end