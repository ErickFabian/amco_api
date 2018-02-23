class School < ApplicationRecord
  validates :name, :country, presence: true
end
