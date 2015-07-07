React         = require("react")
routerModule  = require('react-router')
{Handler, Root, Router, RouteHandler, Route, DefaultRoute, Navigation, Link} = routerModule
Location = require 'react-router/lib/Location'

{Page1, Page2} = require 'components/pages'

App = React.createClass
  displayName: 'App'

  componentDidMount: ->
    routes = (
      <Route path="/" component={Page1}>
        <Route path="page2" component={Page2} />
      </Route>
    )

    location = new Location('/')
    Router.run routes, location, (Handler, state) =>
      React.render <Handler {...state}/>, document.getElementById('router-target')

  render: ->
    <div id="router-target">This is the div whose contents react-router should overwrite...</div>

module.exports = App
