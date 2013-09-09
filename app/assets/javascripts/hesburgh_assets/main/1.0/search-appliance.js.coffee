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
        qUrl = "#{href}?q=#{escape(searchField.val())}"
        if searchField.length > 0
          window.location.href = 'http://ejlpprd.library.nd.edu/search/ejournals/?q=HERE' 

    $links.click(searchApplianceRedirect)

