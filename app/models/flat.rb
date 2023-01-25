class Flat < ApplicationRecord
  has_many :reviews, :dependent_destroy
end
