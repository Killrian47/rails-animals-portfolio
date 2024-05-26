# The CatBreed model is used to store the cat breed name.
class CatBreed < ApplicationRecord
  has_many :cats, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { in: 3..50 }, format: { with: /\A[^0-9][\w\s-]+\z/ }
end
