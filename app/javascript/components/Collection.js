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
import M_Sort from './M_Sort'
import O_CardRecipe from './O_CardRecipe'
import Frame from './Frame'

const Collection = ({ collection }) => {
  return (
    <>
      <div className="collection-container">
        <div className="breadcrumbs-block">
          <M_Breadcrumbs />
        </div>
        <div className="collection-title">
          <A_TextTitle title={collection.name} />
        </div>
        <div className="collection-description">
          <A_TextCaption name="Ресторан BLAU"/>
        </div>
        <div className="collection-description-block">
          <A_TextCaption name={collection.title}/>
        </div>
        <div>
          <O_CardRecipe recipes={collection.posts}/>
        </div>
      </div>
      <O_Footer/>
    </>
  )
}

export default Collection
