require 'pry'

class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients, dependent: :destroy

  validates :name, presence: true
  accepts_nested_attributes_for :ingredients, reject_if: :reject_ingredients

  def reject_ingredients
    attributes['name'].blank?
  end

  def ingredients_attributes=(ingredient_attributes)
    ingredient_attributes.values.each do |ingredient_attribute|
      if !ingredient_attribute["name"].blank?
        ingredient = Ingredient.find_or_create_by(ingredient_attribute)
        self.ingredients << ingredient
      end
    end
  end
end
