import React from "react"
import PropTypes from "prop-types"
import _Button from "react-bootstrap/Button"

class Button extends React.Component {
  render () {
    return (
        <_Button variant={this.props.variant}>
          {this.props.name}
        </_Button>
    )
  }
}

Button.propTypes = {
  variant: PropTypes.string,
  name: PropTypes.string,
};
export default Button
