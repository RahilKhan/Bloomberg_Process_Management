window.onload = function () {
	var chart = new CanvasJS.Chart("CurrentMonthIncomeExpenseOwed",
			{
		title:{text: "Deals count per currency"},
		animationEnabled: true,
		axisY: {title: "Amount"},
		legend: {verticalAlign: "bottom",horizontalAlign: "center"},
		theme: "theme2",
		data: [
			{
				type: "column",  
				showInLegend: true, 
				legendMarkerColor: "grey",
				dataPoints: [	
					{y: 100000,label: "USD"},
					{y: 238000,label: "INR"},
					{y: 238000,label: "EUR"},										
					{y: 475000,label: "AED"},
					{y: 380000,label: "JOD"},
					{y: 410000,label: "AED"}
					]
			}
			]
			});
	chart.render();
}