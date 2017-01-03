var Register = React.createClass ({
  register: function(e) {
    e.preventDefault()
    console.log('you got me')
  },
  render () {
    return (
      <div>
        <h2>Welcome to the Old Goat Antique Store</h2>
        <label for="name">Name: </label>
        <input id='name'></input><br/>
        <label for="address">Shipping Address: </label>
        <input id='address'></input><br/>
        <label for="username">Email/Username: </label>
        <input id='username'></input><br/>
        <label for="password">Password: </label>
        <input type='password' id='password' name='password'></input><br/>
        <button onClick={this.register}>Register</button>
      </div>
    )
  }
})
