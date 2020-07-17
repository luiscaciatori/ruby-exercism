# frozen_string_literal: true

module ResistorColorDuo
  COLORS_VALUES = {
    'black' => 0, 'brown' => 1, 'red' => 2, 'orange' => 3,
    'yellow' => 4, 'green' => 5, 'blue' => 6, 'violet' => 7,
    'grey' => 8, 'white' => 9
  }.freeze

  def self.value(colors)
    colors.map { |color| COLORS_VALUES[color] }.take(2).join().to_i()
  end
end
