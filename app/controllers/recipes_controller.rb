class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    if @recipe == nil
      redirect_to root_path
    end
  end

  def delete
    recipe = Recipe.find(params[:id])

    recipe.destroy
    redirect_to root_path
  end

  def new
    @recipe = Recipe.new
  end

  def test
    @recipes = Recipe.all
  end

end
