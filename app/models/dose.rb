class Dose < ApplicationRecord
  validates :description, presence: true, length: { minimum: 1 }
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }

  belongs_to :ingredient#, forein_key: 'ingredient_id'
  belongs_to :cocktail #,  forein_key: 'cocktail_id'
end
