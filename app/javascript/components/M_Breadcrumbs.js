import React from 'react'
import A_TextBlock from './A_TextBlock'

const M_Breadcrumbs = () => {
  return (
    <div>
      <span onClick={() => window.history.back()}><A_TextBlock text='назад'/></span>
      <A_TextBlock text=' • BLAU' />
    </div>
  )
}

export default M_Breadcrumbs
