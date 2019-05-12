require "./lib/board"
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