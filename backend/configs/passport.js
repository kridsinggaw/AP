const passport      = require('passport')
const passportJWT   = require("passport-jwt")
const ExtractJWT    = passportJWT.ExtractJwt
const JWTStrategy   = passportJWT.Strategy
const LocalStrategy = require('passport-local').Strategy
const db = require('../util/db.config');
const UserModel = db.user;

let user = {
  id: 1,
  username: 'tmb@test.com'
}

passport.use(new LocalStrategy({
    usernameField: 'username',
    passwordField: 'password'
  }, 
  async (username, password, cb) => {        
    user = await UserModel.findAll({
      where: {
        username,
        password
      }
    });
    if (user.length == 0) {
      return cb(null, false, {message: 'Incorrect username or password.'})
    }
            
    user = {
      id: user[0].id,
      username: user[0].username
    }
    return cb(null, user, {message: 'Logged In Successfully'})
  }
));

passport.use(new JWTStrategy({
        jwtFromRequest: ExtractJWT.fromAuthHeaderAsBearerToken(),
        secretOrKey   : 'your_jwt_secret'
    },
    async (jwtPayload, cb) => {

      try {
        // find the user in db if needed
        user = await UserModel.findByPk(jwtPayload.id);
        if(jwtPayload.id == user.id) {
          return cb(null, user);
        } else {
          return cb(null, false);
        }
      } catch (error) {
        return cb(error, false);
      }
    }
));