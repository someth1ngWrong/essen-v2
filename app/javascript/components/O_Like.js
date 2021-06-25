import React from 'react'
import A_TextCaption from './A_TextCaption'
import A_IconQuestion from 'images/recipe_icons/question_icon.svg'
import A_IconPescetarian from './A_IconPescetarian'
import A_IconOmnivore from './A_IconOmnivore'
import A_IconVegeterian from './A_IconVegetarian'
import A_IconVegan from './A_IconVegan'

const O_Like = () => {
  return (
    <div>
      <div className="text-caption-block">
        <div className="recipe-title-two">
          <A_TextCaption name="Пoнраbился" />
        </div>
        <div className="recipe-title-two">
          <A_TextCaption name=" рецепт?" />
        </div>
      </div>
      <div className="like-button-block">
        Хочу добавку!
      </div>
      <div className="icon-recipe-container-block">
        <div className="icon-recipe">
          <A_IconPescetarian/>
          <div  className="icon-image-recipe">3 259</div>
        </div>
        <div className="icon-recipe">
          <A_IconOmnivore/>
          <div  className="icon-image-recipe">2 189</div>
        </div>
        <div className="icon-recipe">
          <A_IconVegeterian/>
          <div className="icon-image-recipe">1 259</div>
        </div>
        <div className="icon-recipe">
          <A_IconVegan/>
          <div className="icon-image-recipe">2 259</div>
        </div>
      </div>
      <div className="query-link">
        <img src={A_IconQuestion} />
        <div>Что это значит?</div>
      </div>
    </div>
  )
}

export default O_Like
