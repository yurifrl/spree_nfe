jQuery ($) ->

  $('#nfe-code').on change: ->
    $el = $ this
    $('#nfe-code-select').val($el.val())
    $('#nfe-code-text').val($el.val())

  $('#nfe-code-select').on change: ->
    $el = $ this
    $('#product_nfe_code').val($el.val())
    $('#nfe-code-text').val($el.val())

  $('#nfe-code-text').on change: ->
    $el = $ this
    $('#product_nfe_code').val($el.val())
