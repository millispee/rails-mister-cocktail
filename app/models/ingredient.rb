class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, length: { minimum: 1 }
  has_many :doses
  has_many :cocktails, through: :doses


end
