 
jQuery(function($) {
	if ( $("#exlidAdvancedSearchTile").hasClass("EXLAdvancedSearch")){
		$('#help-box').addClass("advanced");
	}
	$('.EXLMainMenuITEMhelp').click(function (event){
 
                    var url = $(this).attr("href");
                    var windowName = "Help";//$(this).attr("name");
                    var windowSize = ['width=700,height=500,resizable=1,scrollbars=1'];
 
                    window.open(url, windowName, windowSize);
 
                    event.preventDefault();
 
	});
});