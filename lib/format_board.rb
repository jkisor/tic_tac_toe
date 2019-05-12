class Board
  
  def initialize(data)
    @data = data
  end

  def spaces
    @data.chars
  end

  def rows
    spaces.each_slice(3)
  end

end
class FormatBoard
  
  def call(board)
    b = Board.new(board)

    formatted_rows = b.rows.map do |row| 
      "| #{row.join(" | ")} |"
    end
    
    [
      " ----------- ",
      formatted_rows,
      " ----------- ",
    ].flatten

  end

end