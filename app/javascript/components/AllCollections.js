import React from 'react'
import A_TextTitle from './A_TextTitle'
import M_Collection from './M_Collection'
import O_Footer from './O_Footer'

const AllCollections = ({ collections }) => {

  return (
    <>
      <div className="collection-container">
        <A_TextTitle title="пOдбopКи" />
        <div className="card-row-block">
          {collections.map((collection) => <M_Collection collection={collection} />)}
        </div>
      </div>
      <O_Footer/>
    </>
  )
}

export default AllCollections
