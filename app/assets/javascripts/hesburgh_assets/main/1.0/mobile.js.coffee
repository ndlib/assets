jQuery ($) ->
  $(".search-toggle").click (div) ->
    $("div.header_search").toggleClass("closed")
    $("div.header").toggleClass("open")

  $('#nav').mobileMenu({combine:false, prependTo:'.menu'})
