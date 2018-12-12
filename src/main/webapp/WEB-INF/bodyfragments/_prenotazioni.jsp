<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Visualizzazione Prenotazioni</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="../my.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

	<body>
	<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Prenotazioni esistenti</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Prenotazioni per Risorsa
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Nome Prenotazione</th>
                                        <th class= "left-aligned-cell">Id Risorsa</th>
                                        <th>Nome Risorsa</th>
                                        <th class= "left-aligned-cell">Limite Risorsa</th>
                                        <th>Inizio</th>
                                        <th>Fine</th>
                                        <th>Nome Utente</th>
                                    </tr>
                                </thead>
                                
                            </table>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


    <!-- DataTables JavaScript -->
    <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>


    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
    $('#dataTables-example').DataTable({
        ajax: {
            url: "/getbookings",
            dataSrc: 'data'
            
        },
        "language": {
            "url":" //cdn.datatables.net/plug-ins/1.10.19/i18n/Italian.json",
        },
        columns: [
          { data: "name" }, 
          { data: "resourceId" , className: "right-aligned-cell" }, 
          { data: "resourceName" },
          { data: "resourceLim" , className: "right-aligned-cell"},
          { data: "start", 
        	  "render" : function(
						data, type,
						row) {
					var x = new Date(
							data);
					var monthNames = [
							"Gennaio",
							"Febbraio",
							"Marzo",
							"Aprile",
							"Maggio",
							"Giugno",
							"Luglio",
							"Agosto",
							"Settembre",
							"Ottobre",
							"Novembre",
							"Dicembre" ];
					var day = x
							.getDate();
					var monthIndex = x
							.getMonth();
					var year = x
							.getFullYear();
					var ore = x
							.getHours();
					var minuti = x
							.getMinutes();
					if (ore < 10) {
						ore = '0'
								+ ore;
					}
					if (minuti < 10) {
						minuti = '0'
								+ minuti;
					}
					return day
							+ ' '
							+ monthNames[monthIndex]
							+ ' '
							+ year
							+ ' '
							+ ore
							+ ':'
							+ minuti;
				}},
          { data: "end",
        	  "render" : function(
						data, type,
						row) {
					var x = new Date(
							data);
					var monthNames = [
							"Gennaio",
							"Febbraio",
							"Marzo",
							"Aprile",
							"Maggio",
							"Giugno",
							"Luglio",
							"Agosto",
							"Settembre",
							"Ottobre",
							"Novembre",
							"Dicembre" ];
					var day = x
							.getDate();
					var monthIndex = x
							.getMonth();
					var year = x
							.getFullYear();
					var ore = x
							.getHours();
					var minuti = x
							.getMinutes();
					if (ore < 10) {
						ore = '0'
								+ ore;
					}
					if (minuti < 10) {
						minuti = '0'
								+ minuti;
					}
					return day
							+ ' '
							+ monthNames[monthIndex]
							+ ' '
							+ year
							+ ' '
							+ ore
							+ ':'
							+ minuti;
				}},
          { data: "user" }
 
        ]
    });
    });
    </script>
	</body>
</html>