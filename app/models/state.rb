class State < ApplicationRecord
  default_scope { alphabetically }

  scope :search, ->(q) { q.blank? ? all : where("name LIKE ?", "#{q}%") }
  scope :alphabetically, -> { order(:name) }

  def to_combobox_display
    name
  end
end
