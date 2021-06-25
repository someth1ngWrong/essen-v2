import React from "react"
import PropTypes from "prop-types"
import A_IconOmnivore from './A_IconOmnivore'
import A_IconPescetarian from './A_IconPescetarian'
import A_IconVegan from './A_IconVegan'
import A_IconVegetarian from './A_IconVegetarian'
class M_Filter extends React.Component {

  render(src) {

    const setFilter = (filter) =>
      window.location.search = `active_filter=${filter}`

    const activeFilter = this.props.activeFilter
    return (
      <div>
        <div className="tab-options-block">

          <div className="tab-block">

            <div onClick={()=> setFilter("omnivores")} className={`tab-option ${activeFilter == "omnivores" && "active"}`}>
              <A_IconOmnivore />
            </div>

            <div onClick={()=> setFilter("pescetarians")} className={`tab-option ${activeFilter == "pescetarians" && "active"}`}>
              <A_IconPescetarian />
            </div>

            <div onClick={()=> setFilter("vegans")} className={`tab-option ${activeFilter == "vegans" && "active"}`}>
              <A_IconVegan />
            </div>

            <div onClick={()=> setFilter("vegetarians")} className={`tab-option ${activeFilter == "vegetarians" && "active"}`}>
              <A_IconVegetarian />
            </div>

            <p className="filter-text">Я ем</p>
          </div>
        </div>
      </div>
    );
  }
}

export default M_Filter
