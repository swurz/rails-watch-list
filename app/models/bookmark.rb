class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list }
end
