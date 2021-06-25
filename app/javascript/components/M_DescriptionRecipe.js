import React from 'react'
import M_TextAndIcon from './M_TextAndIcon'
import A_IconTime from 'images/recipe_icons/A_IconTimeBlack.svg'
import A_IconLike from 'images/recipe_icons/icon_like.svg'
import A_IconDifficulty from 'images/recipe_icons/icon_difficulty_black.svg'

const M_DescriptionRecipe = ({ recipe }) => {
  return (
    <div style={{ display: "flex" }}>
      <div className="icon-text-block">
        <M_TextAndIcon icon={A_IconTime} text={recipe.time} />
      </div>
      <div className="icon-text-block">
        <M_TextAndIcon icon={A_IconLike} text="5 568" />
      </div>
      <div>
        <M_TextAndIcon icon={A_IconDifficulty} text={recipe.complexity}/>
      </div>
    </div>
  )
}

export default M_DescriptionRecipe
