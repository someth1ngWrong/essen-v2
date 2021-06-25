import React from 'react'
import M_Breadcrumbs from './M_Breadcrumbs'
import A_TextTitle from './A_TextTitle'
import M_DescriptionRecipe from './M_DescriptionRecipe'
import A_Photo from './A_Photo'
import Plate from 'images/recipe_icons/Plate.svg'
import A_TextBody from './A_TextBody'
import M_AuthorLinks from './M_AuthorLinks'
import O_Ingredients from './O_Ingredients'
import A_TextCaption from './A_TextCaption'
import A_RecipeIcon from 'images/recipe_icons/recipe_1.svg'
import A_RecipeIconTwo from 'images/recipe_icons/recipe_2.svg'
import O_Like from './O_Like'
import O_Footer from './O_Footer'
import A_IconBookmark from './A_IconBookmark'


const O_DescriptionRecipe = ({ recipe, ingredients }) => {

  return (
    <>
      <div class="recipe-container">
        <M_Breadcrumbs />
        <div style={{display: "flex"}}>
          <A_TextTitle title={recipe.name} />
          <div style={ {alignSelf: "center"}}>
            <A_IconBookmark/>
          </div>
        </div>
        <M_DescriptionRecipe recipe={recipe} />
        <A_Photo icon={recipe.image.url} />
        <div className= "description-body-recipe">
          <A_TextBody text={recipe.title}/>
        </div>
        <div className="author-block">
          <M_AuthorLinks
            link_1="Рецепт предоставлен"
            link_2="BLAU"
            link_3="Все рецепты автора"
          />
        </div>
        <div className="ingredients-block">
          <O_Ingredients recipe={recipe} ingredients={ingredients}/>
        </div>
        <div className="text-caption-block">
          <div className="recipe-title-two">
            <A_TextCaption name="кaк" />
          </div>
          <div className="recipe-title-two">
            <A_TextCaption name="пригoтоbить" />
          </div>
        </div>
        <div className="recipe-description-block">
          <A_TextCaption name={recipe.content} />
          {/* <br/>
          <A_TextCaption name="проточной водой и нарежьте." /> */}
        </div>

        {/* <div className="recipe-description-block" style={{padding: "25px 0"}}>
          <A_TextCaption name="Тофу нарежьте кубиками" />
          <br/>
          <A_TextCaption name="и смешайте нарезанные овощи" />
          <br/>
          <A_TextCaption name="с тофу." />
        </div>
        <div>
          <img src={A_RecipeIcon} className="recipe-image-block" />
        </div>

        <div className="recipe-description-block" style={{padding: "25px 0"}}>
          <A_TextCaption name="Посолите салат по вкусу, но не" />
          <br/>
          <A_TextCaption name=" пересолите — тофу достаточно" />
          <br/>
          <A_TextCaption name="соленая." />
        </div>
        <div>
          <img src={A_RecipeIconTwo} className="recipe-image-block" />
        </div> */}
        <O_Like />
      </div>
      <O_Footer/>
    </>
  )
}

export default O_DescriptionRecipe
