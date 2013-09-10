jQuery ($) ->
  $searchAppliance = $('#tab_box').filter('.search-appliance')

  if $searchAppliance.length > 0
    $links = $searchAppliance.find('.tabs dd > a')
    $tabContents = $searchAppliance.find('.tabs-content > li')

    searchApplianceRedirect = (event) ->
      link = $(this)
      href = link.attr('href')
      if href && /^[^#]/.test(href)
        event.preventDefault()
        activeTabContent = $tabContents.filter('.active')
        searchField = activeTabContent.find('input[type=text]:first')
        qUrl = "#{href}?q=#{escape(searchField.val())}"
        window.location.href = 'http://www.google.com'
        if searchField.length > 0

    $links.click(searchApplianceRedirect)

