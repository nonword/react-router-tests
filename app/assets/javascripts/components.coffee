React         = require("react")

# Tests: Uncomment the one to use:

# Test 1: This is a basic cjsx app without react-router - to demonstrate that cjsx is minimally working:
# App           = require 'components/app-no-router.cjsx'

# Test 2: Render <Router> element directly as seen at https://github.com/rackt/react-router/blob/master/README.md
# App           = require 'components/app-router-1.cjsx'

# Test 3: Render router via Router.run, as hinted at in http://rackt.github.io/react-router/#Router%20Overview
App           = require 'components/app-router-2.cjsx'

$(document).ready ->
  React.render React.createElement(App, {}), document.body
