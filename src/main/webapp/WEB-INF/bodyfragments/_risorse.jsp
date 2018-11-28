<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Risorse Disponibili</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Risorse Disponibili
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Tipo Risorsa</th>
                                        <th>Nome</th>
                                        <th>Limite</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>Proiettore</td>
                                        <td>num. 1</td>
                                        <td>256</td>
                                        
                                        
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>Proiettore</td>
                                        <td>num. 2</td>
                                        <td>512</td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Macchina</td>
                                        <td>Fiat Punto</td>
                                        <td>5</td>
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Macchina</td>
                                        <td>Fiat 500</td>
                                        <td>4</td>
                                    </tr>
                                    <tr class="odd gradeA">
                                        <td>Macchina</td>
                                        <td>BMW 320d</td>
                                        <td>5</td>
                                    </tr>
                                    <tr class="even gradeA">
                                        <td>Laptop</td>
                                        <td>Asus zen 3</td>
                                        <td>8</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td>Laptop</td>
                                        <td>Dell G7</td>
                                        <td>16</td>
                                    </tr>                                   
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

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
</body>
</html>