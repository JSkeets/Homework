import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Orange from './orange';
import Yellow from './yellow';

class Red extends React.Component {
  render() {
    return(
      <div>
        <h2 className="red"></h2>
        {/* Links here */}
        <NavLink exact to='/red' >Red Only</NavLink>
        <Link to='/red/orange' >Add Orange</Link>
        <Link to='/red/yellow' >Add Yellow</Link>

        {/* Routes here */}
      </div>
    );
  }
};

export default Red;
