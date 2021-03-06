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

  def winner?
    claimed_lines.any?
  end

  def claimed_lines
    lines.select { |line| line_claimed?(line) }
  end

  def line_claimed?(line)
    line.count("-") == 0 && line.uniq.size == 1
  end

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

  def lines
    [rows, columns, diagonals].flatten(1)
  end

end