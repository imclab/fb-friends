window.log = -> @console?.log?.apply @console, arguments

require.config
  shim: {
    handlebars: exports: "Handlebars"
    "facebook-sdk": exports: "FB"
    jscrollpane: ["jquery"]
    mousewheel: ["jquery"]
  }
  paths:
    # RequireJS plugins
    text: "../components/text/text"

    # Third party libraries
    jquery: "../components/jquery/jquery"
    jscrollpane: "../components/jquery.jscrollpane/jquery.jscrollpane"
    mousewheel: "../components/jquery-mousewheel/jquery.mousewheel"

    handlebars: "../components/handlebars/handlebars"
    backbone: "../components/backbone-amd/backbone"
    underscore: "../components/underscore-amd/underscore"

    # Third party libraries (external)
    "facebook-sdk": "//connect.facebook.net/en_US/all"

require ["views/app", "lib/jquery-extensions"], (AppView) ->
  new AppView
