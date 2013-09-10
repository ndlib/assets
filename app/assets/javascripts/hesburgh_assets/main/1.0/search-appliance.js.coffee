jQuery ($) ->
  $searchAppliance = $('#tab_box').filter('.search-appliance')

  if $searchAppliance.length > 0
    $links = $searchAppliance.find('.tabs dd > a')
    $tabContents = $searchAppliance.find('.tabs-content > li')

    searchApplianceRedirect = (event) ->
      event.preventDefault()
      event.stopPropagation()
      console.log event
      window.location.replace('http://www.google.com')
      link = $(this)
      href = link.attr('href')
      if href && /^[^#]/.test(href)
        activeTabContent = $tabContents.filter('.active')
        searchField = activeTabContent.find('input[type=text]:first')
        qUrl = "#{href}?q=#{escape(searchField.val())}"


    $links.click(searchApplianceRedirect)

