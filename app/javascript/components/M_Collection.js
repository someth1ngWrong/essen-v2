import React from 'react'

const M_Collection = ({ collection }) => {

  const goToCollection = (collectionId) => window.location.pathname = `/collections/${collectionId}`

  return (
    <div className="collection-frame" onClick={() => goToCollection(collection.id)}>
      <div className="frame-image-block" style={{backgroundImage: `url(${collection.image.url})`}}>
        <div className="collection-name">{collection.name}</div>
      </div>
    </div>
  )
}

export default M_Collection
