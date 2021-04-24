<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Bar Graph</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

</head>
<body>
<div class="container">

<h2 align="center">Technology Line Graph</h2>

<div id="container" style="width:550px;height:400px;margin:0 auto">


</div>

<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script inline="javascript">
$(function(){
Highcharts.chart('container',{
chart:{
	type:'column'
},
title:{
	text:'Technology Popularity In India'
},
subtitle:{
	text:'All Details is not true its a dummy Map'
},
xAxis:{
	categories:[[${surveyMap.keySet()}]],
	crosshair:true
},
yAxis:{
	min:0,
	max:100,
	title:{
text:'Technology Rating [in %]'
		}
},
	tooltip:{
headerFormat:'<span style="font-size:10px"> {point.key}</span> <table>'
pointFomrat:'<tr><td style="color:{series.color};padding:0">{series.name}:</td> +
            '<td style="padding:0"><b>{point.y:.1f}k</b></td> </tr>',
            footerFormat:'</table',
            shared:true,
            useHTML:true,
		},
		plotOptions:{
column:{
pointPadding:0.2,
borderWidth:0

	
}
			},
			series:[{
				name:'Technology',
					data:'[[${surveyMap.values()}]]'
				}]
});

	
});

</script>












</div>
</body>
</html>