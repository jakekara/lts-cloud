import React from 'react';
import { connect } from 'react-redux';
import Nav from './Nav';
import Testimony from './Testimony';
import Err from './Error';
import TestimonyLoader from './TestimonyLoader';

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      err: false,
    }
  }

  componentWillMount() {
    const self = this;
    window.onerror = () => self.setState({err: true});
    window.addEventListener('error', () => self.setState({err: true}))
  }

  render() {
    return (
      <div className='app-container'>
        <Nav />
        <Testimony />
        <TestimonyLoader />
        {this.state.err
          ? <Err className='top-level-err' />
          : null
        }
        <div className='app-wrap'>
          {this.props.children}
        </div>
      </div>
    )
  }
}

export default App;