import React from 'react'

const ingredientName = (ingredient_id, ingredients) =>
  ingredients.find((ingredient) => ingredient.id == ingredient_id).ingredient

const A_Ingredient = ({ postIngredient, ingredients }) => {
  return (
    <span className="ingeredients-list-arrow">
      <select className="ingeredient-with-list" name="cars" id="cars">
        {postIngredient.ingr_replica1_id && <option className="ingredient-options" value="volvo">{ingredientName(postIngredient.ingr_replica1_id, ingredients)}</option>}
        {postIngredient.ingr_replica2_id && <option className="ingredient-options" value="bobo">{ ingredientName(postIngredient.ingr_replica2_id, ingredients)}</option> }
        {postIngredient.ingr_replica3_id && <option className="ingredient-options" value="zozo">{ingredientName(postIngredient.ingr_replica3_id, ingredients)}</option>}
        {postIngredient.ingr_replica4_id && <option className="ingredient-options" value="zozo">{ingredientName(postIngredient.ingr_replica4_id, ingredients)}</option>}
        {postIngredient.ingr_replica5_id && <option className="ingredient-options" value="zozo">{ ingredientName(postIngredient.ingr_replica5_id, ingredients)}</option> }
      </select>
    </span>
  )
}

export default A_Ingredient
