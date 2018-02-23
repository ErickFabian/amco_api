class SchoolSerializer < ApplicationSerializer
  attributes :name, :country
  set_type :school  # optional
  #cache_options enabled: true, cache_length: 12.hours
  #has_many :users
  #belongs_to :university
end
