class Artist < ApplicationRecord
   has_many :parties, dependent: :destroy
   has_many :genres, through: :songs
end
