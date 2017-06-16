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

				$("#fileUpload").click(function() {
					console.log("#fileUpload.click");
					console.log("\t fileUpload.click \n\t " + $('input[type=file]').val());
					$('#uploadedAjaxFile').val("");
					$('#uploadedAjaxFile').unbind();
					$("#resetCsvUpload").unbind();
					$("#uploadCsvFile").unbind();
					$('#dialogForFileImport').modal('show');
				});

				/* Resetting file input button on page load*/
				$('#file1').val("");
				$('#file1').unbind();
				$("#searchText").val("");

				$("#uploadCsvFile").click(function() {
					console.log("\t uploadCsvFile.click ");
					me.dashboard.uploadCsvFile();
				});

				$("#fileSearch").click(function(){
					if($("#searchText").val().length > 0){
						me.dashboard.searchFileDetails();
						$('#fileSearchDialog').modal('show');
					}else{
						alert("Please provide search input")
					}
				});


//				$("#fileUploadForm").submit(function(e) {
//				console.log("\t fileUploadForm submitted.");
//				e.preventDefault();
//				});

				/*	
				$("#fileSearch").click(function() {
					console.log("#fileSearch.click");
					me.dashboard.searchUploadFileDetails();
					$('#dialogForFileImport').modal('show');
				});

				$("#csvUpload").click(function() {
					console.log("#csvUpload.click");
					$('#springCsvUpload').modal('show');
				});


				$("#Upload1").click(function() {
					console.log("#Upload1.click");
					console.log($('input[type=file]').val());
					 me.dashboard.uploadCsvFile();
				});

				$("#UploadCsv").click(function() {
					console.log($('input[type=file]').val());
				});				

                $('#dialogForFileImport').on('hidden.bs.modal', function() {
                    $('#uploadedAjaxFile').val("");
                    $('#uploadedAjaxFile').unbind();
                    $("#resetCsvUpload").unbind();
                    $("#uploadCsvFile").unbind();
                });

                $('#resetCsvUpload').click(function() {
                	console.log("\t resetCsvUpload.click");
                    $('#uploadedAjaxFile').val("");
                    $("#uploadCsvFile").unbind();
                });

				$(function(){

					$('#file').change( function(event) {
						var tmppath = URL.createObjectURL(event.target.files[0]);
						$("img").fadeIn("fast").attr('src',tmppath);
						var path = document.getElementById("file").value;
						console.log("\t tmppath : " + tmppath
								+"\t path : " + path);
					});
				});
				 */
			},

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

			initializeDashboard : function(){
				console.log("dashboard.js : initializeDashboard ");

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

			uploadCsvFile : function(){
				console.log("dashboard.js : uploadCsvFile");

				var fd = new FormData();
				fd.append('uploadedFile', this.files[0]); // since this is your file input

				var promise = $.ajax({
					async: true,
					url: "fileUpload/uploadFiles.htm",
					type: "post",
					dataType: 'json',
					enctype: 'multipart/form-data',
					contentType: "text/json; charset=utf-8",
//					processData: false, // important
//					contentType: false, // important
					data: fd,

				}).done(function(result) {
					console.log("\t result : " + JSON.stringify(result));
				}).fail(function(jqXHR, textStatus) {
					console.log("\tgetDashboardDetails : Application Exception Occured " );
				});
				return promise;
			},

			/**
			 * This method makes call to fetch file detail based on search text provided
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
			 * Method to display bar-graph
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
					axisY: {title: "Amount"},
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
