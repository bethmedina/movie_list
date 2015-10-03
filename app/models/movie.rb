class Movie < ActiveRecord::Base
  validates :title, :presence => true
  validates :genre, :presence => true
  validates :rated, :presence => true
  validates :rated, inclusion: { in: %w(G PG PG-13 R),
    message: "%{value} is not a valid rating" }
  validates :stars, :presence => true
end
