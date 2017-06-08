window.onload = function (){

	$('function_search_form').onsubmit = function(){

		inline_results();
		return false;
	}
}

function inline_results(){
	new Ajax.Updater('oras', base_url+'Search/ajaxsearch', {method:'post', postBody:'oras=true&idCutremur='+$F('idCutremur')});

	new Effect.Appear('oras');
}