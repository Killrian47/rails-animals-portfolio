# The CatBreed model is used to store the cat breed name.
class CatBreed < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 3..50 }, format: { with: /\A[a-zA-Z]+\z/ }
end
