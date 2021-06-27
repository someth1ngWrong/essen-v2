import React from 'react'
import A_TextBlock from './A_TextBlock'

const M_Breadcrumbs = () => {
  return (
    <div>
      <div onClick={() => window.history.back()}><A_TextBlock  style={{ color: "#9897DE" }} text='← Вернуться в рецепты'/></div>
      <A_TextBlock text='' />
    </div>
  )
}


//
// class M_Breadcrumbs extends React.Component {
//   render ()  {
//     const M_Breadcrumbs = () => {
//       const goToHome = () => window.location.pathname = "/"
//       return (
//         <div>
//         <span onClick={goToHome} }><A_TextBlock text='← Вернуться в рецепты'/></span>
//         <A_TextBlock text='' />
//         </div>
//       );
//     }
//   }
// }

export default M_Breadcrumbs





//
// const M_Breadcrumbs = () => {
//   const goToHome = () => window.location.pathname = "/"
//   return (
//     <div>
//       <span onClick={goToHome} }><A_TextBlock text='← Вернуться в рецепты'/></span>
//       <A_TextBlock text='' />
//     </div>
//   )
// }
