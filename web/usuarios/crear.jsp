<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>Starter Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">


    </head>

    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <div class="container">
            <br><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="panel-title">Menu Principal</h2>
                </div>
                <div class="panel-body">
                    <br>
                    Crear Usuario
                    <br><br>
                    <table class="table table-bordered">
                        <thead>
                        <th>Nombre:</th>
                        <th>Apellido paterno:</th>
                        <th>Apellido materno:</th>
                        <th>Ciudad:</th>
                        
                        </thead>
                        <form action="ucreado.jsp" method="post">
                        <tbody>
                        <td><input type="text" name="nombre"></td>
                        <td><input type="text" name="apepat"></td>
                        <td><input type="text" name="apemat"></td>
                        <td><select>
                        <option name="list" value="1">Punta Arenas</datalist>
                        <option name="list" value="2">Santiago</datalist>
                            </select>
                        </td>    
                        </tbody>    
                    </table>
                    <input type="submit" class="btn btn-success" name="Enviar">
                </form>
                </div>
            </div>
            



        </div><!-- /.container -->



        <script src="../template/js/bootstrap.min.js"></script>

    </body>
</html>