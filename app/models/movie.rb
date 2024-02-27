class Movie < ApplicationRecord
  enum rating: %w[ G PG PG-13 R NC-17 ]

  def to_combobox_display
    title
  end
end
