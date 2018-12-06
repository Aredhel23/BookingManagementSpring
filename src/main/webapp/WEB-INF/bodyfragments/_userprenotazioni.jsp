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
                           Prenotazioni in atto
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Nome Prenotazione</th>
                                        <th>Id Risorsa</th>
                                        <th>Nome Risorsa</th>
                                        <th>Limite Risorsa</th>
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
                    <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Prenotazioni passate
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example1">
                                <thead>
                                    <tr>
                                        <th>Risorsa</th>
                                        <th>Data</th>
                                        <th>Ora</th>
                                        <th>Nome Prenotazione</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                        
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>Proiettore</td>
                                        <td>08/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Analisi</td>
                                        
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Proiettore</td>
                                        <td>09/01/2018</td>
                                        <td>11-13</td>
                                        <td>lezione Fisica</td>
                                        
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Macchina</td>
                                        <td>10/01/2018</td>
                                        <td>9-18</td>
                                        <td>Milano</td>
                                        
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Macchina</td>
                                        <td>15/01/2018</td>
                                        <td>9-22</td>
                                        <td>Torino</td>
                                        
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Laptop</td>
                                        <td>18/01/2018</td>
                                        <td>9-13</td>
                                        <td>Riunione</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Laptop</td>
                                        <td>01/02/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>07/03/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                       
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>09/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                            </table>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    </div>
                     <!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Cronologia Prenotazioni
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example2">
                                <thead>
                                    <tr>
                                        <th>Risorsa</th>
                                        <th>Data</th>
                                        <th>Ora</th>
                                        <th>Nome Prenotazione</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>Proiettore</td>
                                        <td>01/01/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                        
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>Proiettore</td>
                                        <td>08/01/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Analisi</td>
                                        
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Proiettore</td>
                                        <td>09/01/2019</td>
                                        <td>11-13</td>
                                        <td>lezione Fisica</td>
                                        
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Macchina</td>
                                        <td>10/01/2019</td>
                                        <td>9-18</td>
                                        <td>Milano</td>
                                        
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Macchina</td>
                                        <td>15/01/2019</td>
                                        <td>9-22</td>
                                        <td>Torino</td>
                                        
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Laptop</td>
                                        <td>18/01/2019</td>
                                        <td>9-13</td>
                                        <td>Riunione</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Laptop</td>
                                        <td>01/02/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>07/03/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                       
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>09/01/2019</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                        
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>Proiettore</td>
                                        <td>08/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Analisi</td>
                                        
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Proiettore</td>
                                        <td>09/01/2018</td>
                                        <td>11-13</td>
                                        <td>lezione Fisica</td>
                                        
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Macchina</td>
                                        <td>10/01/2018</td>
                                        <td>9-18</td>
                                        <td>Milano</td>
                                        
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Macchina</td>
                                        <td>15/01/2018</td>
                                        <td>9-22</td>
                                        <td>Torino</td>
                                        
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Laptop</td>
                                        <td>18/01/2018</td>
                                        <td>9-13</td>
                                        <td>Riunione</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Laptop</td>
                                        <td>01/02/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>07/03/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>01/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                       
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Proiettore</td>
                                        <td>09/01/2018</td>
                                        <td>9-11</td>
                                        <td>lezione Robotica</td>
                                        
                                    </tr>
                            </table>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    </div>
                <!-- /.col-lg-6 -->
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
            url: "/getuserbookings",
            dataSrc: 'data'
            
        },
        columns: [
          { data: "name" }, 
          { data: "resourceId" }, 
          { data: "resourceName" },
          { data: "resourceLim" },
          { data: "start" },
          { data: "end" },
          { data: "user" }
 
        ]
    });
    });
    </script>
    <script>
    $(document).ready(function() {
        $('#dataTables-example1').DataTable({
            responsive: true
        });
    });
    </script>
    <script>
    $(document).ready(function() {
        $('#dataTables-example2').DataTable({
            responsive: true
        });
    });
    </script>
</body>
</html>