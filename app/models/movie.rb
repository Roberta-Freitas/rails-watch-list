class Movie < ApplicationRecord
  has_many :bookmarks
  # You can’t delete a movie
  # if it is referenced in at least one bookmark.
  validates :overview, presence: true
  validates :title, uniqueness: true
  validates :title, presence: true
end
