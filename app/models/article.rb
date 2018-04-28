class Article < ApplicationRecord # -> rails5
  validates :title, presence: true, length: {minimum: 3, maximum: 50} # to see errors -> art.errors.full_messages
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end