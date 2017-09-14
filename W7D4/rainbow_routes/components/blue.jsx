import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Indigo from './indigo';


class Blue extends React.Component {
  render() {
    return (
      <div>
        <h2 className="blue"></h2>
        {/* Links here */}
        <NavLink exact to='/blue' >Blue only</NavLink>
        <Link to='/blue/indigo' >Add indigo</Link>

        {/* Routes here */}
      </div>
    );
  }
};

export default Blue;
