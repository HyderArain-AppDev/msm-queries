class Movie < ApplicationRecord
  d = Director.new
  d.name = "Greta Gerwig"
  d.dob = "August 4, 1983"
  d.save
end
