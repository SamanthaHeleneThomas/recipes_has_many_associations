class Recipe < ApplicationRecord

    #Validations
    validates_presence_of :name

    #this ensures that we do not have  duplicates of the same named ingredients
    validates_uniqueness_of :name, case_sensitive:false

    #Associations

    has_many :recipe_ingredients, dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients


end
