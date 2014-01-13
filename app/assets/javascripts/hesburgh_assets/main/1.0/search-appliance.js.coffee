jQuery ($) ->
  $searchAppliance = $('#tab_box').filter('.search-appliance')

  if $searchAppliance.length > 0
    $links = $searchAppliance.find('.tabs dd > a')
    $tabContents = $searchAppliance.find('.tabs-content > li')

    searchApplianceRedirect = (event) ->
      link = $(this)
      href = link.attr('href')
      if href && /^[^#]/.test(href) && !/[?]/.test(href)
        activeTabContent = $tabContents.filter('.active')
        searchField = activeTabContent.find('input[type=text]:first')
        qParam = $.param({q: searchField.val()})
        qUrl = "#{href}?#{qParam}"
        if searchField.length > 0
          event.preventDefault()
          event.stopImmediatePropagation()
          event.stopPropagation()
          window.location.href = qUrl

    $links.click(searchApplianceRedirect)

  doc = document.documentElement
  doc.setAttribute "data-useragent", navigator.userAgent

