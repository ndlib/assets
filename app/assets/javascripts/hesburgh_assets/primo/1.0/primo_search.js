var searchBox = '
<div id="tab_box" class="search-appliance">
  <dl class="tabs contained">
    <dd><a tabindex="1" href="#tab_primo" id="tab_primo_l" class="active onesearch tab"><span>OneSearch</span></a></dd>
    <dd><a tabindex="2" href="http://librarypprd.library.nd.edu/search/catalog" id="tab_cat_l" class="ndcatalog tab"><span>ND Catalog</span></a></dd>
    <dd><a tabindex="3" href="http://librarypprd.library.nd.edu/search/articles" id="tab_art_l" class="tab">Articles</a></li>
    <dd><a tabindex="3" href="http://librarypprd.library.nd.edu/search/ejournals" id="tab_jou_l" class="tab">eJournals</a></li>
    <dd><a tabindex="5" href="http://librarypprd.library.nd.edu/search/databases" id="tab_dat_l" class="tab">Databases</a></dd>
    <dd><a tabindex="6" href="http://librarypprd.library.nd.edu/search/ebooks" id="tab_boo_l" class="tab">eBooks</a></dd>
  </dl>

  <div id="search_box">
    <ul class="tabs-content contained">
      <li class="active tab_primo" id="tab_primoTab">



    <fieldset>
      <div class="pull-left">
        <label for="search_field" class="hide-text"><%= t('blacklight.search.form.search_field.label') %></label>
        <%= select_tag(:search_field, options_for_select(search_fields, h(params[:search_field])), :title => t('blacklight.search.form.search_field.title'), :class=>"search_field input-small") %>
        <span class="hide-text"><%= t('blacklight.search.form.search_field.post_label') %></span>
      </div>
      <% end %>
       <div class="input-append pull-left">
        <label for="q" class="hide-text"><%= t('blacklight.search.form.q') %></label>
         <%= text_field_tag :q, params[:q], :placeholder => t('blacklight.search.form.q'), :class => "search_q q srch-box long", :id => "q"%>
        <button type="submit" class="btn btn-primary search-btn" id="search">
          <span class="submit-search-text"><%=t('blacklight.search.form.submit')%></span>
          <i class="icon-search icon-white"></i>
        </button>

       </div>
    </fieldset>







        <ul class="extra-links">
          <li><a href="http://library.nd.edu/eresources/ejournals/alljournals">ADVANCED</a></li>
        </ul>
      </li>
    </ul>
  </div>
</div>
';




$(document).ready(function() {

	$('.home-page-test').find("#exlidSearchRibbon").addClass( "search-appliance" ).html(searchBox);

});
