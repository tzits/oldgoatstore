var Loginform = React.createClass ({
  login: function(){
    console.log('clicked')
  },
  render () {
    return (
      <div>
        <h1>Login to Your Account</h1>
        <label for="email">Email</label>
        <input></input><br/>
        <label for="password">Password</label>
        <input></input><br/>
        <button onClick={this.login}>Log In</button>
      </div>
      )
  }
})
