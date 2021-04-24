$('document').ready(function(){
	
	$('table #editButton').on('click',function(event){
		event.preventDefault();
			
		var href = $(this).attr('href');
			$.get(href, function(transaction, status){
			$('#idEdit').val(transaction.id);
			$('#idtransaction').val(transaction.transactiondocumentid);
			$('#iddocname').val(transaction.docname);
			$('#idcreate').val(transaction.createdBy);
			$('#idcdate').val(transaction.createdDate);
			$('#idmodifyby').val(transaction.lastModifiedBy);
			$('#idlastmodify').val(transaction.lastModifiedDate);
			$('#idreportstatus').val(transaction.reportstatus);
			$('#idOrg').val(transaction.org_id);
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