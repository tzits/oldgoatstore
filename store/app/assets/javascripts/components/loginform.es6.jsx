var Loginform = React.createClass ({
  setLoginInfo: function() {
    var login_data = {
      'username': $('input[name=name]').val(),
      'password': $('input[name=password]').val()
    }
  },
  login: function(){
    console.log('clicked')
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
        <input name='name'></input><br/>
        <label for="password">Password</label>
        <input type='password' name='password'></input><br/>
        <button onClick={this.login}>Log In</button>
      </div>
      )
  }
})
