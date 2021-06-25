import React from 'react'
import M_Collection from './M_Collection'
import Frame_1 from 'images/recipe_icons/frame_1.svg'
import Frame_2 from 'images/recipe_icons/frame_2.svg'
import Frame_3 from 'images/recipe_icons/frame_3.svg'
import Frame_4 from 'images/recipe_icons/frame_4.svg'
import Frame_5 from 'images/recipe_icons/frame_5.svg'

const Frame = (props) => {

  const { collections } = props
  const data = [
    { image: Frame_1},
    { image: Frame_2},
    { image: Frame_3},
    { image: Frame_4},
    { image: Frame_5}
   ];

  return (
    <div class="frame-container">
      {collections.map((collection) => <M_Collection collection={collection} />)}
    </div>
  )
}

export default Frame
