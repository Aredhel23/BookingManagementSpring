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

    <title>Richieste Utente</title>

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
                <div class="col-lg-12">
                    <h1 class="page-header"> Richieste per le mie Prenotazioni</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Verifica Prenotazione
                        </div>
                        <div class="panel-body">
                            
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">                                            
                                            <label>Data</label>
                                            <div class='input-group datetime' id='datetimepicker1'>
                                                <input type='datetime' class="form-control" />
                                            </div>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Tipo Risorsa</label>
                                            <select class="form-control" required>
                                                <option>Proiettore</option>
                                                <option>Macchina</option>
                                                <option>Laptop</option>
                                                <option>Aula</option>
                                                <option>Ufficio</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Risorsa particolare</label>
                                            <select multiple class="form-control" required>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">                                            
                                            <label>Data Inizio</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control" required />
                                            </div>
                                        </div>
                                        <label>Ora Inizio</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" required />
                                        </div> 
                                        <div class="form-group">                                            
                                            <label>Data Fine</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control" required />
                                            </div>
                                        </div>                                  
                                        
                                        <label>Ora Fine</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" required/>
                                        </div> 
                                                                                    
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-default">Verifica</button>
                                            <button type="reset" class="btn btn-default">Reset</button>
                                        </div>    
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
                            Verifica prima disponibilità
                        </div>
                        <div class="panel-body">
                            
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                       
                                        <div class="form-group">
                                            <label>Tipo Risorsa</label>
                                            <select class="form-control" required>
                                                <option>Proiettore</option>
                                                <option>Macchina</option>
                                                <option>Laptop</option>
                                                <option>Aula</option>
                                                <option>Ufficio</option>
                                            </select>
                                        </div>
                                        <div class="form-group">                                            
                                            <label>Durata in ore</label>
                                            <div class='input-group' id='period'>
                                                <input type='number' class="form-control" min="0" step="0.5" required />
                                            </div>
                                        </div> 
                                        <div class="form-group">                                            
                                            <label>Requisito minimo</label>
                                            <div class='input-group' id='limit'>
                                                <input type='number' class="form-control" />
                                            </div>
                                        </div>
                                        <div class="form-group">                                            
                                            <label>Data Inizio</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control"/>
                                            </div>
                                        </div>
                                        <label>Ora Inizio</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" />
                                        </div> 
                                        <div class="form-group">                                            
                                            <label>Data Fine</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control" />
                                            </div>
                                        </div>                                  
                                        
                                        <label>Ora Fine</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" />
                                        </div>                                   
                                        
                                        <button type="submit" class="btn btn-default">Verifica</button>
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
                            Prenota
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Tipo Risorsa</label>
                                            <select class="form-control" required>
                                                <option>Proiettore</option>
                                                <option>Macchina</option>
                                                <option>Laptop</option>
                                                <option>Aula</option>
                                                <option>Ufficio</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Risorsa particolare</label>
                                            <select multiple class="form-control" required>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">                                            
                                            <label>Nome prenotazione</label>
                                            <div class='input-group' id='book'>
                                                <input type='text' class="form-control" required />
                                            </div>
                                        </div>
                                        <div class="form-group">                                            
                                            <label>Data Inizio</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control" required />
                                            </div>
                                        </div>
                                        <label>Ora Inizio</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" required />
                                        </div> 
                                        <div class="form-group">                                            
                                            <label>Data Fine</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control" required />
                                            </div>
                                        </div>                                  
                                        
                                        <label>Ora Fine</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" required />
                                        </div>
                                        <button type="submit" class="btn btn-default">Prenota</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-12 (nested) -->
                                
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Elimina Prenotazione
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Tipo Risorsa</label>
                                            <select class="form-control" required>
                                                <option>Proiettore</option>
                                                <option>Macchina</option>
                                                <option>Laptop</option>
                                                <option>Aula</option>
                                                <option>Ufficio</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Risorsa particolare</label>
                                            <select multiple class="form-control" required>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">                                            
                                            <label>Nome prenotazione</label>
                                            <div class='input-group' id='book'>
                                                <input type='text' class="form-control" required />
                                            </div>
                                        </div>
                                        <div class="form-group">                                            
                                            <label>Data Inizio</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control" required />
                                            </div>
                                        </div>
                                        <label>Ora Inizio</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" required />
                                        </div> 
                                        <div class="form-group">                                            
                                            <label>Data Fine</label>
                                            <div class='input-group' id='time0'>
                                                <input type='date' class="form-control" required />
                                            </div>
                                        </div>                                  
                                        
                                        <label>Ora Fine</label>
                                        <div class='input-group' id='time1'>
                                            <input type='time' class="form-control" required />
                                        </div>
                                        <button type="submit" class="btn btn-default">Elimina</button>
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