class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  

  #GET/ recipes
  def index
    @recipes =Recipe.all
  end

  #Get/recipes/1
  def show
  end

  #GET/recipes/new
  def new
    @recipe =Recipe.new
  end
  #GET/recipes/edit
  def edit
  end

#POST/recipes
def create
  @recipes =Recipe.new(recipe_params)

  if @recipe.save
    redirect_to @recipe, notice: 'Recipe was successfully created'
  else
    render :new
  end
end

#PATCH/PULL
def update
  if @recipes.update(recipe_params)
    redirect_to @recipe, notice: 'Recipe was successfully updated.'
  else
    render :edit
  end
end

#DELETE
def destroy
  @recipes.destroy
  redirect_to recipes_url, notice: 'Recipe was successfully destroyed'
end

private

#Use callbacks to share common set up or constraints between actions
def set_recipe
  @recipe = Recipe.find(params[:id])
end

#only allow a trusted parameter 'whtie list through'
def recipe_params
  params.require(:recipe).permit(:name, :description)
end





end
