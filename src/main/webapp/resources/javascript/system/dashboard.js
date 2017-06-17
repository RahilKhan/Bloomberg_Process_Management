/*
 *(#)dashboard.js - Copyright
 * All rights reserved.
 */
me = new Object();

if (typeof me.dashboard == 'undefined') {
	me.dashboard = function() {
		return {

			dashboardDetails : [],
			fileDetails : [],
			
			/**
			 * @author rahikhan
			 * @description Function to be called once the dashboard loaded.
			 */
			onload : function(){
				console.log("dashboard.js : onload..called without error");
				var promiseDashboardDetails = me.dashboard.getDashboardDetails();

				$.when(promiseDashboardDetails).then(function() {
					me.dashboard.initializeDashboard();
				});

				/* Resetting file input button on page load*/
				$('#file1').val("");
				$('#file1').unbind();
				$("#searchText").val("");

				$("#fileSearch").click(function(){
					if($("#searchText").val().length > 0){
						me.dashboard.searchFileDetails();
						$('#fileSearchDialog').modal('show');
					}else{
						alert("Please provide search input")
					}
				});

			},

			/**
			 * @author rahikhan
			 * @description This method make ajax call to fetch the dashboard details.
			 */
			getDashboardDetails : function(){
				console.log("dashboard.js : getDashboardDetails");
				var promise = $.ajax({
					async: true,
					url: "dashboard/getDashboardDetails.htm",
					type: "GET",
					datatype: "json",
					accept: "application/json",
				}).done(function(result) {
					me.dashboard.dashboardDetails = JSON.parse(result);
					console.log("\tme.dashboard.dashboardDetails : " + JSON.stringify(me.dashboard.dashboardDetails));
				}).fail(function(jqXHR, textStatus) {
					console.log("\tgetDashboardDetails : Application Exception Occured " );
				});
				return promise;
			},

			/**
			 * @author rahikhan
			 * @description This method initializes the screen with dashboard details.
			 */
			initializeDashboard : function(){

				$("#pageHeader").text(me.dashboard.dashboardDetails[0].pageName);

				$("#currentMonthSaving").text(me.dashboard.dashboardDetails[0].savingAmount);
				$("#currentMonthEarning").text(me.dashboard.dashboardDetails[0].earningAmount);
				$("#totalOwed").text(me.dashboard.dashboardDetails[0].owedAmount);
				$("#currentMonthExpenses").text(me.dashboard.dashboardDetails[0].expensesAmount);

				$("#currentMonthSavingHdr").text(me.dashboard.dashboardDetails[0].savingDetails);
				$("#currentMonthEarningHdr").text(me.dashboard.dashboardDetails[0].earningDetails);
				$("#totalOwedHdr").text(me.dashboard.dashboardDetails[0].owedDetails);
				$("#currentMonthExpensesHdr").text(me.dashboard.dashboardDetails[0].expensesDetails);

				me.dashboard.displayDashBoardChart();

			},

			/**
			 * @author rahikhan
			 * @description This method makes call to fetch file detail based on search text provided
			 */
			searchFileDetails : function(){

				var searchText = $("#searchText").val();

				if(searchText.length > 0){ 
					var promise = $.ajax({
						async: true,
						url: "fileUpload/getFileDetails.htm?searchText=" + searchText,
						type: "GET",
						datatype: "json",
						accept: "application/json",
					}).done(function(result) {
						me.dashboard.fileDetails = JSON.parse(result);

						var fileSearchTableBody = "";
						$.each(me.dashboard.fileDetails,function(index,object){
							fileSearchTableBody = "<tr><td>"+object.fileName+"</td><td>"+object.dealCount+"</td></tr>";
						});

						if(fileSearchTableBody.length > 0){
							$("#searchText").val("");
							$("#searchTableBody").empty();
							$("#searchTableBody").append(fileSearchTableBody);
						}else{
							$("#searchTableBody").empty();
							$("#searchTableBody").append("<h3>No data found</h3>");

						}
					}).fail(function(jqXHR, textStatus) {
						console.log("\t searchFileDetails : Application Exception Occured " );
					});

					return promise;
				}
			},


			/**
			 * @author rahikhan
			 * @description Method to display bar-graph
			 */
			displayDashBoardChart : function(){

				var dataPointsArray = [];
				$.each(me.dashboard.dashboardDetails[0].dealsPerCurrencyMap,function(key,value){
					var dataPointObject = {};
					dataPointObject["label"]=key;
					dataPointObject["y"]=parseInt(value);
					dataPointsArray.push(dataPointObject);
				});

				var chart = new CanvasJS.Chart("dealsPerCurrencyGraph",
						{
					//title:{text: "Deals count per currency"},
					animationEnabled: true,
					axisY: {title: "Deals"},
					axisX: {title: "Currency"},
					legend: {verticalAlign: "bottom",horizontalAlign: "left"},
					theme: "theme2",
					data: [{
						type: "column",  
						showInLegend: true, 
						legendMarkerColor: "grey",
						dataPoints: dataPointsArray,
					}]
						});
				chart.render();

			},

		}
	}();
}
