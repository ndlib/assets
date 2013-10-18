jQuery ($) ->
  $searchAppliance = $('#tab_box').filter('.search-appliance')

  if $searchAppliance.length > 0
    $links = $searchAppliance.find('.tabs dd > a')
    $tabContents = $searchAppliance.find('.tabs-content > li')

    searchApplianceRedirect = (event) ->
      link = $(this)
      alert(link) 
      href = link.attr('href')
      if href && /^[^#]/.test(href)
        activeTabContent = $tabContents.filter('.active')
        searchField = activeTabContent.find('input[type=text]:first')
        qUrl = "#{href}?q=#{escape(searchField.val())}"
        if searchField.length > 0
          event.preventDefault()
          event.stopImmediatePropagation()
          event.stopPropagation()
          window.location.replace(qUrl)


    $links.unbind().click(searchApplianceRedirect)

