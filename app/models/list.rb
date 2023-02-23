class List < ApplicationRecord
  has_many :movies, through: :bookmarks
  has_many :bookmarks

  #  dependent: :destroy
  # dependent: :destroy
  #
  # When you delete a list, you should delete all associated bookmarks
  validates :name, uniqueness: true
  validates :name, presence: true
end
# (but not the movies as they can be referenced in other lists).
