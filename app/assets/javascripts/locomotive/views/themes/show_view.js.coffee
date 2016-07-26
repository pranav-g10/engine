Locomotive.Views.Themes ||= {}

class Locomotive.Views.Themes.ShowView extends Backbone.View

  el: '.main'

  render: ->
    super()
    hljs.initHighlightingOnLoad()