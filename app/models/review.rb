class Review < ApplicationRecord
  belongs_to :user
  belongs_to :album
  validates :score, presence: true
end
