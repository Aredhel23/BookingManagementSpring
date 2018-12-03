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
                         <font color="red"><b>${error}</b></font>
                        <font color="green"><b>${mess}</b></font>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                            	 <thead>
                                    <tr>
                                        <th>Id</th>
                                         <th>Tipo</th>
                                        <th>Nome</th>                                       
                                        <th>Limite</th>
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

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <!--
    <script>
    
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
   
    </script>
    -->
    <script>
    $(document).ready(function() {
    $('#dataTables-example').DataTable({
        ajax: {
            url: "/getresources",
            dataSrc: 'data'
            
        },
        columns: [
          { data: "id" }, 
          { data: "type" }, 
          { data: "name" },
          { data: "lim" }
 
        ]
    });
    });
    </script>
</body>
</html>