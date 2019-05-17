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

  def winner?
    rows.any? { |row| row_winner?(row) } ||
    columns.any? { |col|  col_winner?(col) }
  end

  def row_winner?(row)
    row.count("-") == 0 && row.uniq.size == 1
  end

  def col_winner?(col)
    col.count("-") == 0 && col.uniq.size == 1
  end

end