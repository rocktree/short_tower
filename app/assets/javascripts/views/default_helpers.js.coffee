class App.Views.DefaultHelpers extends Backbone.View

  el: 'body'

  initialize: =>
    @disabledLinks()
    @fadeOutNotices()
    @copyToClipboard()

  disabledLinks: =>
    $('a.disabled').click (e) ->
      e.preventDefault()

  fadeOutNotices: =>
    setTimeout () =>
      $('.notice, .alert').fadeOut()
    , 3500

  copyToClipboard: =>
    for button in $('.copy-button')
      new ZeroClipboard($(button))
      $(button).click (e) ->
        $('body').prepend """
          <p class="notice">
            Copied successfully!
          </p>
          """
        @fadeOutNotices()
