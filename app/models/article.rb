class Article < ApplicationRecord # -> rails5

	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 3, maximum: 50} # to see errors -> art.errors.full_messages
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates :user_id, presence: true
end