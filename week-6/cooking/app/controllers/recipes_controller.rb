class RecipesController < ApplicationController



  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def create
    @recipe = Recipe.new recipe_params

    respond_to do |format|
      if @recipe.save
        format.html{redirect_to @recipe}
      else
        format.html{render :new}
      end
    end
  end

  def update
    @recipe = Recipe.find params[:id]
    @recipe.update recipe_params
    redirect_to @recipe
  end

  def destroy
    @recipe = Recipe.find params[:id]
    @recipe.destroy
    redirect_to root_path
  end

  def recipe_params
    recipe_params = params.require(:recipe).permit(:name,:description)
  end

end
