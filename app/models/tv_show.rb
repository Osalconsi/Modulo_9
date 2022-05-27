class TvShow < ApplicationRecord
  has_many :film_locations, inverse_of: :tv_show
  accepts_nested_attributes_for :film_locations
  belongs_to :nationality
  has_many :episodes, dependent: :destroy
  validates :name, presence: true
end
