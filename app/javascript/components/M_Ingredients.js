import React from 'react'
import A_TextBlock from './A_TextBlock'
import A_Ingredient from './A_Ingredient'
import A_IconQuestion from 'images/recipe_icons/icon_question.svg'

const M_Ingredients = ({ title_1, title_2, showDropdown, showQuestionMark, postIngredient, ingredients }) => {
  return (
    <>
      <div className="ingeredients-list-block">
        <div className="ingeredient-one">
          {showDropdown
            ? <A_Ingredient
                text={title_1}
                postIngredient={postIngredient}
                ingredients={ ingredients}
              />
            : <A_TextBlock text={title_1} />}
        </div>
        <div className="ingeredient-one"><A_TextBlock text={title_2} /></div>
        {showQuestionMark && <img src={A_IconQuestion} />}
      </div>
    </>
  )
}

export default M_Ingredients
