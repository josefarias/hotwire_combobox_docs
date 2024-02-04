class Searchable < ApplicationRecord
  enum :kind, %i[ suggestion historical ]

  scope :search, ->(q) { q.blank? ? all : where("term LIKE ?", "#{q}%") }
  scope :alphabetically, -> { order(:term) }
  scope :by_kind, -> { order(kind: :desc) }

  def to_combobox_display
    term
  end
end
