import React from 'react'

const M_AuthorLinks = ({ link_1, link_2, link_3}) => {
  return (
    <div>
      <div className="author-links-container">
        <div className="a-link-1">{link_1}</div>
          <div className="a-link-2">{link_2}</div>
      </div>
        <div className="a-link-2">{link_3}</div>
    </div>
  )
}

export default M_AuthorLinks
