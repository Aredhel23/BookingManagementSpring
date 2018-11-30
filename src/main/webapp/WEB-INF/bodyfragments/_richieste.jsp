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

    <title>Gestione</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

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
		                <div class="col-lg-6">
		                    <h1 class="page-header">Gestione Risorse</h1>
		                </div>
		                <div class="col-lg-6">
		                    <h1 class="page-header">Ricerca Prenotazioni</h1>
		                </div>
		                <!-- /.col-lg-12 -->
		            </div>
		            <!-- /.row -->
		            <div class="row">
		                <div class="col-lg-6">
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            Aggiungi Risorsa
		                        </div>
		                        <div class="panel-body">
		                            
		                            <div class="row">
		                                <div class="col-lg-6">
		                                <%
		                                	String name = (String)session.getAttribute("name");
		                                	String error = (String)session.getAttribute("error");
		                                	String mess = (String)session.getAttribute("mess");
		                                %>
		                                <font color="red"><b><%=error!=null?error:"" %></b></font>
		                                <font color="green"><b><%=mess!=null?mess:"" %></b></font>
		                                    <form role="form" method = "POST" action="/gigetto">
		                                        <div class="form-group">
		                                            <label>Seleziona Risorsa</label>
		                                            <select name="name" class="form-control" required value="<%=name!=null?name:"" %>">
		                                                <option>Proiettore</option>
		                                                <option>Macchina</option>
		                                                <option>Laptop</option>
		                                                <option>Aula</option>
		                                                <option>Ufficio</option>
		                                            </select>
		                                        </div>
		                                        <button type="submit" class="btn btn-default"  >Aggiungi</button>
		                                        <button type="reset" class="btn btn-default">Reset</button>
		                                    </form>
		                                    <form role="form" method = "POST" action="/gigetto">
		                                        <div class="form-group">
		                                            <label>Seleziona Risorsa</label>
		                                            <input name="name" type="text" value="<%=name!=null?name:"" %>" >
		                                        </div>
		                                        <button type="submit" class="btn btn-default"  >Aggiungi</button>
		                                        <button type="reset" class="btn btn-default">Reset</button>
		                                    </form>
		                                </div>
		                                <!-- /.col-lg-6 (nested) -->
		                                
		                                
		                            </div>
		                            <!-- /.row (nested) -->
		                            
		                            
		                        </div>
		                        <!-- /.panel-body -->
		                    </div>
		                    <!-- /.panel -->
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            Elimina Risorsa
		                        </div>
		                        <div class="panel-body">
		                            
		                            <div class="row">
		                                <div class="col-lg-6">
		                                    <form role="form">
		                                        <div class="form-group">                                            
		                                            <label>Data</label>
		                                            <div class='input-group date' id='datetimepicker1'>
		                                                <input type='date' class="form-control" required />
		                                            </div>                                            
		                                        </div>
		                                        <div class="form-group">
		                                            <label>Select Resource</label>
		                                            <select class="form-control" required>
		                                                <option>Proiettore</option>
		                                                <option>Macchina</option>
		                                                <option>Laptop</option>
		                                                <option>Aula</option>
		                                                <option>Ufficio</option>
		                                            </select>
		                                        </div>
		                                        <div class="form-group">
		                                            <label>Multiple Selects</label>
		                                            <select multiple class="form-control" required>
		                                                <option>1</option>
		                                                <option>2</option>
		                                                <option>3</option>
		                                                <option>4</option>
		                                                <option>5</option>
		                                            </select>
		                                        </div>
		                                        <button type="submit" class="btn btn-default">Elimina</button>
		                                        <button type="reset" class="btn btn-default">Reset</button>
		                                    </form>
		                                </div>
		                                <!-- /.col-lg-6 (nested) -->                          
		                                
		                            </div>
		                            <!-- /.row (nested) -->                           
		                            
		                        </div>
		                        <!-- /.panel-body -->
		                    </div>
		                    <!-- /.panel -->
		                </div>
		                <!-- /.col-lg-6 -->
		                
		                <div class="col-lg-6">
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            Stampa Prenotazioni
		                        </div>
		                        <div class="panel-body">
		                            <div class="row">
		                                <div class="col-lg-12">
		                                    <form role="form">                                                 
		                                        <button type="submit" class="btn btn-default">Stampa per risorsa</button>
		                                        <button type="submit" class="btn btn-default">Stampa per utente</button>
		                                        <button type="reset" class="btn btn-default">Reset</button>
		                                    </form>
		                                </div>
		                                <!-- /.col-lg-12 (nested) -->
		                                
		                            </div>
		                            <!-- /.row (nested) -->
		                        </div>
		                        <!-- /.panel-body -->
		                    </div>
		                    <!-- /.panel -->
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            Stampa Prenotazioni
		                        </div>
		                        <div class="panel-body">
		                            <div class="row">
		                                <div class="col-lg-12">
		                                    <div class="form-group" id="PrintArea">
		                                            <textarea class="form-control" rows="25" readonly="readonly"></textarea>
		                                    </div>
		                                </div>
		                                <!-- /.col-lg-12 (nested) -->
		                                
		                            </div>
		                            <!-- /.row (nested) -->
		                        </div>
		                        <!-- /.panel-body -->
		                    </div>
		                </div>
		                <!-- /.col-lg-6 -->                
		            </div>               
		            <!-- /.row -->
		        </div>
		        <!-- /#page-wrapper -->
		
		    </div>
		    <!-- /#wrapper -->	
	</body>
</html>