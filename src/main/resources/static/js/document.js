$('document').ready(function(){
	
	$('table #editButton').on('click',function(event){
		event.preventDefault();
		
		var href = $(this).attr('href');
			$.get(href, function(dirdoc, status){
			$('#idedit').val(dirdoc.id);
			$('#diredit').val(dirdoc.directorname);
			$('#typeEdit').val(dirdoc.reportype);
						});					
		$('#editModal').modal();
	});
	
	$('table #deleteButton').on('click', function(event){
		event.preventDefault();
		
		var href= $(this).attr('href');
		
		$('#confirmDeleteButton').attr('href', href);
		
		$('#deleteModal').modal();
	});
		
});