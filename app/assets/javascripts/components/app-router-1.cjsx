React         = require("react")
routerModule  = require('react-router')
{Handler, Root, Router, RouteHandler, Route, DefaultRoute, Navigation, Link} = routerModule
BrowserHistory = require 'react-router/lib/BrowserHistory'
HashHistory = require 'react-router/lib/HashHistory'
Location = require 'react-router/lib/Location'

{Page1, Page2} = require 'components/pages'

App = React.createClass
  displayName: 'App'

  render: ->
    location = new Location('/')

    <Router history={BrowserHistory} location={location}>
      <Route path="/" component={Page1}>
        <Route path="page2" component={Page2} />
      </Route>
    </Router>

module.exports = App
