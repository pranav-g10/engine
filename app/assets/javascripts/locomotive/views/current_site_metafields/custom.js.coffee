#= require ../shared/form_view

Locomotive.Views.CurrentSiteMetafields ||= {}

class Locomotive.Views.CurrentSiteMetafields.Custom extends Backbone.View

  el: '.main > .nav'

#  @$(@el).addClass('sss')

#  $('ul li').on 'click', (e) ->
#    if $(this).text() == 'Restore'
#      $('.text-right').hide()
#    else
#      $('.text-right').show()
#    return