# Description: Cat model
class Cat < ApplicationRecord
  belongs_to :cat_breed
  validates :name, presence: true, length: { in: 3..50 }, format: { with: /\A[a-zA-Z\s]+\z/ }
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cat_breed, presence: true
end
