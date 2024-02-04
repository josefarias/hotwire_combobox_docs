class Movie < ApplicationRecord
  def to_combobox_display
    title
  end
end
