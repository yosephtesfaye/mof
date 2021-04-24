

<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>
<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>High Charts</title>
 
</head>
<body>
<br>
<br>
    <h1 >Welcome to Highcharts</h1>
	
	<div id="container" style="height: 400px;"></div>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	
    <script>
    $.ajax({
    	url: 'piechart',	
    	success: function(result){
        	var series =[];
        	var data =[];
         for(var i=0; i < result.length; i++){
           var object={};
           object.name= result[i].name.toUpperCase();
           object.y= result[i].yaxis;
           data.push(object);
             }

         var seriesObject= {
                 name:'Users',
                 colorByPoint:true,
                 data: data
                 }
         series.push(seriesObject);
    	 drawPiechart(series);	
    	}
    })
       

    function drawMultipleLineChart(formatteddata){
    	Highcharts.chart('container', {

    	    title: {
    	        text: 'Ministry of Finace Yearly Report by Charts, 2012-2013'
    	    },

    	    subtitle: {
    	        text: 'Source: mof.gov.et'
    	    },

    	    yAxis: {
    	        title: {
    	            text: 'Number of Reports'
    	        }
    	    },
    	    legend: {
    	        layout: 'vertical',
    	        align: 'right',
    	        verticalAlign: 'middle'
    	    },

    	    plotOptions: {
    	        series: {
    	            label: {
    	                connectorAllowed: false
    	            },
    	            pointStart: 2011
    	        }
    	    },

    	    series: formatteddata,

    	    responsive: {
    	        rules: [{
    	            condition: {
    	                maxWidth: 500
    	            },
    	            chartOptions: {
    	                legend: {
    	                    layout: 'horizontal',
    	                    align: 'center',
    	                    verticalAlign: 'bottom'
    	                }
    	            }
    	        }]
    	    }

    	});

    }
    	
function drawPiechart(series){
	Highcharts.chart('container', {
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: null,
	        plotShadow: false,
	        type: 'pie'
	    },
	    title: {
	        text: 'Users in EMCP System, 2021'
	    },
	    tooltip: {
	        pointFormat: '{series.name}: <b>{point.y}%</b>'
	    },
	    accessibility: {
	        point: {
	            valueSuffix: '%'
	        }
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            dataLabels: {
	                enabled: true,
	                format: '<b>{point.name}</b>: {point.y} '
	            }
	        }
	    },
	    series: series
	    
	});
	
}
    
    </script>
	
	
</body>
</html>