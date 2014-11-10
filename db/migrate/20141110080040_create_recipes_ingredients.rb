class CreateRecipesIngredients < ActiveRecord::Migration
  def change
    create_table :recipes_ingredients, id: false do |t|
      t.references :recipe, null: false, index: true
      t.references :ingredient, null: false, index: true
    end
  end
end
