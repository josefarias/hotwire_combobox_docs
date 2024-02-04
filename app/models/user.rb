class User < ApplicationRecord
  belongs_to :favorite_movie, class_name: :Movie, optional: true

  accepts_nested_attributes_for :favorite_movie
end
