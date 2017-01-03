var Loginform = React.createClass ({
  login: function() {
    console.log('part1')
    this.setState ({
      username: $('#name').val(),
      password: $('#password').val()
    })
    console.log(this.state.username)
    $.ajax({
      type: 'POST',
      url: '/login',
      data: this.login_data
    })
  },
  render () {
    return (
      <div>
        <h1>Login to Your Account</h1>
        <label for="username">Email</label>
        <input id='name'></input><br/>
        <label for="password">Password</label>
        <input id='password' name='password'></input><br/>
        <button onClick={this.login}>Log In</button>
      </div>
    )
  }
})
