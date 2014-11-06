class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def recipe
    @recipe
  end

  def show

  end

  def submit
    @recipe = Recipe.create(
    name: @attributes[:name],
    description: @attributes[:description]
    )

    @attributes[:ingredients].each do |id|
      RecipeIngredient.new(ingredient_id: id, recipe_id: recipe.id)

    end
  end

end
