$(document).ready(function()
{
$('#loader').hide();
$("#signup").on("click",function(){
$("#signup").prop("disabled",true);
var name=$("#name").val();
var file=$("#file").val();
// Get form
var form=$('#register-form')[0];
var data=new formData(form);
data.append("name",name);

$('#loader').show();
if(name == "" || file == ""){
$("#signup").prop("disabled",false);
$('#loader').hide();
$("#name").css("border-color","red");
$("#file").css("border-color","red");

$("#error_name").html("Please fill the required filed.");

$("#error_file").html("Please fill the required filed.");


} else{
$("#name").css("border-color","");
$("#file").css("border-color","");

$("#error_name").css('opacity',0);
$("#error_file").css('opacity',0);
$.ajax({
type:'POST',
enctype:'multipart/form-data',
data:data,
url:"file-upload",
processData:false,//prevent jquery from automatically transforming the data
contentType:false,//tell jquery not to set the conttype
cache:false,
success: function(data,statusText ,xhr){
console.log(xhr.status);
if(xhr.status == "200"){
$('#loader').hide();
$("#register-form")[0].reset();
$("#error").text("");
$("#success").text(data);

$('#success').delay(5000).fadeOut('slow');
$("#signup").prop("disabled",false);

}
},
error:function(e){
$('#loader').hide();
$("#error").text(e.responseText);
$('#error').delay(10000).fadeOut('slow');
$("#signup").prop("disabled",false);
}

});

}

});

});