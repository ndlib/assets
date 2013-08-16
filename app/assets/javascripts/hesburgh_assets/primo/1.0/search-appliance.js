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

<li class="tab_cat ui-tabs ui-tabs-hide" id="tab_catTab">
    <form name="searchForm" method="get" action="/search/catalog" class="simple EXLForm" enctype="application/x-www-form-urlencoded; charset=utf-8">
      <fieldset>
        <span class="legend">Find books, music, movies, etc. in ND and area libraries</span>
        <input type="text" id="catplus_search" class="srch-box long" name="q" value="" onkeydown="" accesskey="s" />
        <button type="submit" class="searchbtn btn">Search</button>

      </fieldset>
    </form>
	<!--<div id="problem" style="color: green;"><a href="/catalogplus/what_you_should_know.shtml">5 Things You Should Know</a> about CatalogPlus, especially if you are an ardent CatalogClassic user. <br /><br /></div>-->
    <ul class="extra-links">
      <li><a href="http://onesearch.library.nd.edu/primo_library/libweb/action/search.do?vid=NDU&resetConfig=true&tab=nd_campus&mode=Advanced">Advanced search</a></li>
      <li><a href="http://alephprod.library.nd.edu/F/?func=find-b-0">Catalog Classic</a></li>
      <li><a href="http://eresources.library.nd.edu/databases/worldcat">WorldCat</a></li>
    </ul>
    <p class="about-tab">
      <a data-reveal-id="catplus">About ND Catalog</a>
    </p>
  </li>

  <li class="tab_art ui-tabs ui-tabs-hide" id="tab_artTab">
    <form action="/search/articles" method="get">
      <fieldset>
        <span class="legend">Find articles on a topic</span>
        <input id="quick_search" class="srch-box long" type="text" name="q" value="" />
        <button type="submit" class="searchbtn btn">Search</button>

      </fieldset>
    </form>
    <ul class="extra-links">
      <li><a href="http://xerxes.library.nd.edu/quicksearch/databases/subject/general-multidisciplinary">Advanced Search</a></li>
      <li><a href="/find_articles/index.shtml#tab_tad">Most used article databases</a></li>
      <li><a href="/find_articles/index.shtml#tab_dbsub">Articles by subject</a></li>
    </ul>
    <p class="about-tab">
      <a data-reveal-id="art">About Articles</a>
    </p>
  </li>

  <li class="tab_jou ui-tabs ui-tabs-hide" id="tab_jouTab">
    <form action="/search/ejournals" method="get">
      <fieldset>
        <span class="legend">Find a specific journal</span>
        <input tabindex="5" id="journals_search" class="srch-box long" type="text" name="q" value="" /> <button type="submit" class="searchbtn btn">Search</button>

      </fieldset>
    </form>

    <ul class="extra-links">
      <li><a href="http://ejl.library.nd.edu/">Advanced search</a></li>
      <li><a href="http://library.nd.edu/eresources/ejournals/alljournals">All journals</a></li>
    </ul>
    <p class="about-tab">
      <a data-reveal-id="jou">About e-Journals</a>
    </p>
  </li>

  <li class="tab_dat ui-tabs ui-tabs-hide" id="tab_datTab">
    <form action="/search/databases" method="get"  enctype="application/x-www-form-urlencoded" accept-charset="utf-8" name="myform" id="myform">
      <fieldset>
        <span class="legend">Find databases by title or keyword</span>
        <input id="dbf_search" class="srch-box long" type="text" name="q" value="" />
        <button type="submit" class="searchbtn btn">Search</button>

      </fieldset>
    </form>
    <ul class="extra-links">

      <li>All databases:
	<span id="atoz">
        <a href="/alpha/a">A</a>
        <a href="/alpha/b">B</a>
        <a href="/alpha/c">C</a>
        <a href="/alpha/d">D</a>
        <a href="/alpha/e">E</a>
        <a href="/alpha/f">F</a>
        <a href="/alpha/g">G</a>
        <a href="/alpha/h">H</a>
        <a href="/alpha/i">I</a>
        <a href="/alpha/j">J</a>
        <a href="/alpha/k">K</a>
        <a href="/alpha/l">L</a>
        <a href="/alpha/m">M</a>
        <a href="/alpha/n">N</a>
        <a href="/alpha/o">O</a>
        <a href="/alpha/p">P</a>
        <a href="/alpha/q">Q</a>
        <a href="/alpha/r">R</a>
        <a href="/alpha/s">S</a>
        <a href="/alpha/t">T</a>
        <a href="/alpha/u">U</a>
        <a href="/alpha/v">V</a>
        <a href="/alpha/w">W</a>
        <a href="/alpha/x">X</a>
        <a href="/alpha/y">Y</a>
        <a href="/alpha/z">Z</a>
	<a href="/alpha/0">0-9</a></span></li><br />
 	 <li><a href="/ddw/public/subject-all-dbs.cgi">Databases by subject</a></li>
    </ul>
    <p class="about-tab">
      <a data-reveal-id="dat">About Databases</a>
    </p>
  </li>

<li class="tab_boo ui-tabs ui-tabs-hide" id="tab_booTab">
  <form name="searchForm" method="get" action="/search/ebooks" class="simple EXLForm" enctype="application/x-www-form-urlencoded; charset=utf-8">
      <fieldset>
        <span class="legend">Find electronic books in ND and area libraries</span>
        <input type="text" id="search_field" class="EXLSearchInputText EXLMainSearchField srch-box long" name="q" value="" onkeydown="" accesskey="s" />
        <button type="submit" class="searchbtn btn">Search</button>

      </fieldset>
    </form>
    <ul class="extra-links">
      <li><a href="/srch-find/ebooks.shtml">e-Book collections</a></li>
      <li><a href="http://eresources.library.nd.edu/databases/googlebook">Google Books</a></li>
      <li><a href="http://eresources.library.nd.edu/databases/hathitrust">HathiTrust</a> (<a href="http://eresources.library.nd.edu/databases/hathifaq">FAQ</a>)</li>
   </ul>
    <p class="about-tab">
      <a data-reveal-id="ebooks">About e-Books</a>
    </p>
  </li>

</div>';






$(document).ready(function() {


	$('.home-page-test').find("#exlidSearchRibbon").addClass( "search-appliance" ).html(searchBox);

});
