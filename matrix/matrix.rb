class Matrix
  attr_reader :rows, :columns

  def initialize(value)
    @rows = parse_rows(value)
    @columns = parse_columns(value)
  end

  private

  def parse_rows(value)
    value
    .split("\n")
    .map{ |line| line.split.map(&:to_i) }
  end

  def parse_columns(value)
    rows = parse_rows(value)
    aux = []

    rows.each do |row|
      row.each_with_index do |item, index|
        if aux[index].nil? or aux[index].empty?
          aux[index] = [item]
        else
          aux[index] << item
        end
      end
    end

    aux
  end
end
