React = require 'react'

module.exports =

  Page1: React.createClass
    displayName: 'Page1'
    render: ->
      <div>Page 1</div>

  Page2: React.createClass
    displayName: 'Page2'
    render: ->
      <div>Page 2</div>

  NoMatchPage: React.createClass
    displayName: 'NoMatch'
    render: ->
      <div>No match page</div>

