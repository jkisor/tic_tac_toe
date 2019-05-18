class Board

  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def spaces
    @data.chars
  end

  def rows
    spaces.each_slice(3).to_a
  end

  def done?
    winner? || no_empty_spaces?
  end

  private

  def no_empty_spaces?
    !(spaces.count("-") > 0)
  end

  def columns
    (0..2).map do |n|
      rows.map { |row| row[n] }
    end
  end

  def diagonals
    [
      [ rows[0][0], rows[1][1], rows[2][2] ],
      [ rows[0][2], rows[1][1], rows[2][0] ]
    ]
  end

  def winner?
    rows.any? { |row| row_winner?(row) } ||
    columns.any? { |col|  col_winner?(col) } ||
    diagonals.any? { |d| diagonal_winner?(d) }
  end

  def row_winner?(row)
    winning_line?(row)
  end

  def col_winner?(col)
    winning_line?(col)
  end

  def winning_line?(line)
    line.count("-") == 0 && line.uniq.size == 1
  end

  def diagonal_winner?(diagonal)
    winning_line?(diagonal)
  end

end