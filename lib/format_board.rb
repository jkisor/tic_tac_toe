class FormatBoard
  def call(board)
    formatted_rows = board.rows.map do |row| 
      "| #{row.join(" | ")} |"
    end
    
    [
      " ----------- ",
      formatted_rows,
      " ----------- ",
    ].flatten

  end

end