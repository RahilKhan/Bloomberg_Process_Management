<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 id="pageHeader" class="page-header"></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-upload fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"><span id="currentMonthSaving"></span></div>
							<div><span id="currentMonthSavingHdr"></span></div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-green">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-tasks fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"><span id="currentMonthEarning"></span></div>
							<div><span id="currentMonthEarningHdr"></span></div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-minus-circle fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"><span id="totalOwed"></span></div>
							<div><span id="totalOwedHdr"></span></div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-red">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-money fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"><span id="currentMonthExpenses"></span></div>
							<div><span id="currentMonthExpensesHdr"></span></div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- /.row -->
	<div class="row">
		<!-- /.col-lg-8 -->
		<div class="col-lg-4">
			<!-- /.panel -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-bar-chart-o fa-fw"></i> Deal count per currency
				</div>
				<div class="panel-body">
					<div id="CurrentMonthIncomeExpenseOwed" style="height: 300px; width: 100%;"></div>
					<!-- <div id="income-expense-owed-chart"></div> -->
				</div>
				<!-- /.panel-body -->
			</div>
			
			<!-- /.panel .chat-panel -->
			<div id="" class="panel panel-default" style="visibility:hidden"></div>
		</div>
		<!-- /.col-lg-4 -->
	</div>
	<!-- /.row -->
	
	<!-- Modal -->
	<div class="modal fade" id="dialogForFileImport" role="dialog"
		aria-labelledby="dialogForFileImportModalLabel" tabindex="-1">
		<div class="modal-dialog">
	
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">File upload Dialog</h4> 
				</div>
				<div id="fileUploadDisplay" class="modal-body">
					<!-- The file upload form used as target for the file upload widget -->
					<form id="fileupload" action="UploadServlet" method="POST" enctype="multipart/form-data">
	
						<!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
						<div class="row fileupload-buttonbar">
							<div class="fileUploadDivSetting">
								<input type="file" id="uploadedFile" accept=".csv">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="Upload" name="Upload" value="Upload"
						class="btn btn-success start">
						<i class="icon-upload icon-white"></i> <span>Upload</span>
					</button>
					<button id="resetUpload" type="reset"
						class="btn btn-primary cancel">
						<i class="icon-ban-circle icon-white"></i> <span>Reset</span>
					</button>
					<button type="reset" class="btn btn-default cancel"
						data-dismiss="modal">Close</button>
				</div>
				<div id="fileUploadInfoMsgDiv" class="panel panel-info">
					<div class="panel-heading">Only .csv files are allowed.</div>
				</div>
				<div id="fileUploadWarningMsgDiv" hidden="true" class="panel panel-danger">
					<div id="fileUploadWarningPanelHdrDiv" class="panel-heading">
						Only .csv files are allowed.
					</div>
				 </div>
				 
			</div>
	
		</div>
	</div>

	<!-- Modal : spring multifile upload-->
	<div class="modal fade" id="springCsvUpload" role="dialog"
		aria-labelledby="dialogForFileImportModalLabel" tabindex="-1">
		<div class="modal-dialog">
	
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Csv upload Dialog</h4> 
				</div>
				<div id="fileUploadDisplay" class="modal-body">
				    <div class="form-container">
				        <form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data" class="form-horizontal" >
				         
				            <div class="row">
				                <div class="form-group col-md-12">
				                    <label class="col-md-3 control-lable" for="file">Upload a file</label>
				                    <div class="col-md-7">
				                        <input type="file" path="file" id="file" class="form-control input-sm" accept=".csv"/>
				                        <div class="has-error">
				                            <errors path="file" class="help-inline"/>
				                        </div>
				                    </div>
				                </div>
				            </div>
				     
				     		<!-- 
				            <div class="row">
				                <div class="form-actions floatRight">
				                    <input type="submit" value="Upload" class="btn btn-primary btn-sm">
				                </div>
				            </div>
				            -->
				        </form>
				    </div>					
				</div>
				<div class="modal-footer">
					<input type="submit" value="UploadCsv" class="btn btn-success start">
					<button id="resetUpload" type="reset"
						class="btn btn-primary cancel">
						<i class="icon-ban-circle icon-white"></i> <span>Reset</span>
					</button>
					<button type="reset" class="btn btn-default cancel"
						data-dismiss="modal">Close</button>
				</div>
				<div id="fileUploadInfoMsgDiv" class="panel panel-info">
					<div class="panel-heading">Only .csv files are allowed.</div>
				</div>
				<div id="fileUploadWarningMsgDiv" hidden="true" class="panel panel-danger">
					<div id="fileUploadWarningPanelHdrDiv" class="panel-heading">
						Only .csv files are allowed.
					</div>
				 </div>
				 
			</div>
	
		</div>
	</div>	
	
	
</div>
<!-- /#page-wrapper -->



<script type ="text/javascript">

$(document).ready(function() {
	console.log("\tdashboard.jsp");
	
	$.ajax({ 
		url : "resources/javascript/system/dashboard.js",
		dataType : "script",
		cache : true		
	}).done(function(){ 
		console.log("inside done....");
		me.dashboard.onload();
	});
	
});


</script>
