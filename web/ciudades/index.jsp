<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                    <a class="navbar-brand" href="../index.jsp">Base de datos</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <<li class="active"><a href="../usuarios/index.jsp">Usuarios</a></li>
                        <li><a href="index.jsp">Ciudades</a></li>
                        <li><a href="../reportes/index.jsp">Reportes</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <div class="container">
            <br><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="panel-title">Listar Ciudades</h2>
                </div>
                <div class="panel-body">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <th>ID</th>
                        <th>Nombre</th>
                        </thead>
                        <tbody>
                            <% Connection con = null;
                                String driver = "com.mysql.jdbc.Driver";
                                String url = "jdbc:mysql://localhost:3306/javaee";
                                String user = "root";
                                String pass = "";

                                try {
                                    Class.forName(driver);
                                    con = DriverManager.getConnection(url, user, pass);
                                    Statement stmt = con.createStatement();
                                    stmt.executeQuery("select * from ciudades;");
                                    ResultSet rs = stmt.getResultSet();
                                    while (rs.next()) {
                                        out.println("<tr><td>" + rs.getString("ciudad_id") + "</td>");
                                        out.println("<td>" + rs.getString("nombre") + "</td></tr>");

                                    }
                                } catch (Exception ex) {
                                    out.println(ex.getMessage());
                                }
                            %> 
                        </tbody>

                    </table>
                    <form name="volver" action="../index.jsp">
                        <input type="submit" value="Volver" class="btn btn-danger" />
                    </form>
                </div>
            </div>




        </div><!-- /.container -->



        <script src="../template/js/bootstrap.min.js"></script>

    </body>
</html>