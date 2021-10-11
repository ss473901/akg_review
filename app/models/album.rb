class Album < ApplicationRecord
 attachment :image
 has_many :reviews, dependent: :destroy
end
