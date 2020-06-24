import React from "react"
import Alert from "react-bootstrap/Alert"

class BootstrapExample extends React.Component {
  render () {
    return (
        [
          'primary',
          'secondary',
          'success',
          'danger',
          'warning',
          'info',
          'light',
          'dark',
        ].map((variant, idx) => (
            <Alert key={idx} variant={variant}>
              This is a {variant} alert—check it out!
            </Alert>
        ))
    );
  }
}

BootstrapExample.propTypes = {
};
export default BootstrapExample
