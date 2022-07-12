class TvShow < ApplicationRecord
  has_many :film_locations, inverse_of: :tv_show
  accepts_nested_attributes_for :film_locations
  belongs_to :nationality
  belongs_to :user
  has_many :episodes, dependent: :destroy
  has_many :genre_tv_shows, dependent: :destroy
  has_many :genres, through: :genre_tv_shows
  has_and_belongs_to_many :actors
  validates :name, presence: true
  has_one_attached :image
end
