import React from 'react'
import Footer from './O_Footer'
import A_TextTitle from './A_TextTitle'
import M_Sort from './M_Sort'
import O_CardRecipe from './O_CardRecipe'
import Frame from './Frame'

const Main = (props) => {
  console.log("props", props)
  return (
    <>
      <div class="main-container">
        <A_TextTitle title="пOдбopКи" />
        <Frame collections={props.collections}/>
        <A_TextTitle title="Рецепtы" />
        <M_Sort/>
        <O_CardRecipe recipes={props.recipes}/>
      </div>
      <Footer/>
    </>
  )
}

export default Main
