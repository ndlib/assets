jQuery ($) ->
  $searchAppliance = $('#tab_box').filter('.search-appliance')

  if $searchAppliance.length > 0
    $links = $searchAppliance.find('.tabs dd > a')
    $tabContents = $searchAppliance.find('.tabs-content > li')

    searchApplianceRedirect = (event) ->
      link = $(this)
      href = link.attr('href')
      if href && /^[^#]/.test(href)
        activeTabContent = $tabContents.filter('.active')
        searchField = activeTabContent.find('input[type=text]:first')
        if searchField.length > 0
          event.preventDefault()
          alert "#{href}?q=#{escape(searchField.val())}"
          try
            window.location.href="#{href}?thisq=#{escape(searchField.val())}"
          catch error
            alert "And the error is ... #{error}"

    $links.click(searchApplianceRedirect)

