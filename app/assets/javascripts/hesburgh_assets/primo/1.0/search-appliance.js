var searchBox = '<div id="tab_box" class="search-appliance">
  <dl class="tabs contained">
    <dd><a id="tab_primo_l" class="onesearch active tab" href="#tab_primo"><span>OneSearch</span></a><div class="default hide-on-phones"><a href="#tab_primo" class="setTabDefault" title="Save OneSearch as my default search.">Default Tab</a></div></dd>
    <dd><a id="tab_cat_l" href="#tab_cat" class="ndcatalog tab"><span>ND Catalog</span></a><div class="default hide-on-phones"><a href="#tab_cat" class="setTabDefault" title="Save ND Catalog as my default search.">Default Tab</a></div></dd>
    <dd><a tabindex="2" id="tab_art_l" href="#tab_art" class="art tab">Articles</a><div class="default hide-on-phones"><a href="#tab_art" class="setTabDefault" title="Save Articles as my default search.">Default Tab</a></div></li>
    <dd><a tabindex="4" id="tab_jou_l" href="#tab_jou" class=" tab">eJournals</a><div class="default hide-on-phones"><a href="#tab_jou" class="setTabDefault"  title="Save Journals as my default search.">Default Tab</a></div></dd>
    <dd><a tabindex="6" id="tab_dat_l" href="#tab_dat" class=" tab">Databases</a><div class="default hide-on-phones"><a href="#tab_dat" class="setTabDefault"  title="Save Databases as my default search.">Default Tab</a></div></dd>
    <dd><a tabindex="8" id="tab_boo_l" href="#tab_boo" class="tab">eBooks</a><div class="default hide-on-phones"><a href="#tab_boo" class="setTabDefault"  title="Save eBooks as my default search.">Default Tab</a></div></dd>
  </dl>


<div id="search_box">
<ul class="tabs-content contained">
<li class="active" id="tab_primoTab">
    <form name="searchForm" method="get" action="/search/onesearch" class="simple EXLForm" enctype="application/x-www-form-urlencoded; charset=utf-8">
      <!--<p class="new about-tab hide-on-phones"><img src="/local_images/new.png"> <a class="cboxElement" href="/expl/expl-onesearch.shtml">Learn more</a> about our new search service.</p><span class="feedback hide-on-phones"><a href="/onesearch/feedback/">Let us know</a> what you think.</span>-->
      <fieldset>
        <span class="legend">Search articles, the ND catalog and area libraries</span>
        <input tabindex="1" type="text" id="catplus_search" class="srch-box long" name="q" value="" onkeydown="" accesskey="s" />
        <button type="submit" class="searchbtn btn">Search</button>

      </fieldset>
    </form>
    <ul class="extra-links">
      <li><a href="http://onesearch.library.nd.edu/primo_library/libweb/action/search.do?vid=NDU&resetConfig=true&tab=onesearch&mode=Advanced">Advanced search</a></li>
      <li><a href="http://onesearch.library.nd.edu/primo_library/libweb/action/search.do?vid=NDU&tab=nd_campus&mode=Basic&resetConfig=true">ND Catalog</a></li>
      <li><a href="http://alephprod.library.nd.edu/F/?func=find-b-0">Catalog Classic</a></li>
      <li><a href="http://eresources.library.nd.edu/databases/worldcat">WorldCat</a></li>

    </ul>
    <p class="about-tab">
      <a data-reveal-id="onesearch">About OneSearch</a>
    </p>
  </li>
</div>';






$(document).ready(function() {


	$('.home-page-test').find("#exlidSearchRibbon").addClass( "search-appliance" ).html(searchBox);

});
