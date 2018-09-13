class IngredientsController < ApplicationController
 before_action :set_ingredients, only: [:show,:edit,:update, :destroy]
 
 #GET ingredients
  def index
    @ingredients = Ingredient.all
  end

  def show 
  end 

# GET ingredients
  def new
    @ingreident =Ingredient.new
  end

#GET ingredients
  def edit
  end

#POST 
def create 
  @ingredient =Ingredient.new(ingredient_params)
  if @ingredient.save
    redirect_to ingredients_path, notice: 'Ingredient was successfullly created'
  else
    render:new
  end
end

#PATCH/PUT
def update 
  if @ingredient.update(ingredient_params)
    redirect_to ingredients_path, notice: 'Ingredient was successfully updated'
  else
    render :edit
  end 
end

#DELETE
def destroy
  @ingredient.destroy
  redirect_to ingredients_path, notice: 'Ingreident was successfully destroyed'
end 

private
def set_ingredients
  @ingredient = INgredietn.find(params[:id])
end

def ingredient_params
  params.require(:ingredient).permit(:name)
end


end
