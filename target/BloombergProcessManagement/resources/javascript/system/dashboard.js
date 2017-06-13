/*
 *(#)dashboard.js - Copyright
 * All rights reserved.
 */
me = new Object();

if (typeof me.dashboard == 'undefined') {
	me.dashboard = function() {
		return {

			msgArray:[], // variable for  checking same message
            dashboardDetails : [],
            
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
//					 alert($('input[type=file]').val());
					$('#dialogForFileImport').modal('show');
				});
				
				$("#fileSearch").click(function() {
					console.log("#fileSearch.click");
					/**/
					me.dashboard.searchUploadFileDetails();
					$('#dialogForFileImport').modal('show');
				});
				
				$("#csvUpload").click(function() {
					console.log("#csvUpload.click");
//					 alert($('input[type=file]').val());
					$('#springCsvUpload').modal('show');
				});
				
				
				$("#Upload").click(function() {
					console.log($('input[type=file]').val());
				});
				
				$("#UploadCsv").click(function() {
					console.log($('input[type=file]').val());
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
				
			},

			getDashboardDetails : function(){
				console.log("dashboard.js : getDashboardDetails!!!...");
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
				
			},
			
			searchUploadFileDetails : function(){
				console.log("dashboard.js : searchUploadFileDetails!!!...");
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
			
		}
	}();
}
