class Song < ApplicationRecord
    belongs_to :artist, dependent: :destroy
    belongs_to :genre
end
