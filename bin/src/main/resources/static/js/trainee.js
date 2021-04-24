$('document').ready(function(){
	
	$('table #editButton').on('click',function(event){
		event.preventDefault();
			
		var href = $(this).attr('href');
			$.get(href, function(trainee, status){
			$('#idEdit').val(trainee.id);
			$('#idstartdate').val(trainee.startdate);
			$('#idenddate').val(trainee.enddate);
			$('#nameEdit').val(trainee.firstname);
			$('#lastnameEdit').val(trainee.lastname);
			$('#traineecourseEdit').val(trainee.traineecourseid);
			$('#traineeorgEdit').val(trainee.traineeorgid);
			$('#idexamscore').val(trainee.examscore);
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