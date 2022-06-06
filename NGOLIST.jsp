

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%@include file="title.html" %>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
        <!-- Homepage Only Scripts -->
        <script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
                    timeout: 5000,
                    fx: 'fade',
                    pager: '#fs_pagination',
                    pause: 1,
                    pauseOnPagerHover: 0
                });
            });
        </script>


        <%@page import="java.sql.*" %>

    </head>
    <body>
        <div class="wrapper col1">
            <div id="header">
                <%@include file="upperheader.html" %>
                <div id="topnav">
                    <%@include file="admin.html" %>
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="featured_slide">
                <div><a href="#"><img src="image/4.jpg" height="300px;" width="960px;" alt="" /></a>

                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">

                <div class="center-content" style="height: 530px; width: 900px; overflow: auto;">
                    <form  action="sign_Up" method="post" enctype="multipart/form-data">

                        <form  action="sign_Up" method="post" enctype="multipart/form-data">
                            <table width="100%">
                                <tr>
                                    <%
                                                String category = request.getParameter("type");
                                                //category = request.getParameter("Category");
                                                PreparedStatement pst = null;
                                                Connection con = null;
                                                ResultSet rst = null;
                                                String prodName = null;
                                                String a1 = null;
                                                String a2 = null;
                                                String a3 = null;
                                                String a4 = null;
                                                String a5 = null;
                                                String a6 = null;
                                                String didcrip = null;
                                                String waight = null;
                                                String video = null;
                                                int i = 0;
                                                try {
                                                    con = connection.Connect.makeCon();
                                                    String query = "select * from ngo where gender='" + category + "'";
                                                    pst = con.prepareStatement(query);
                                                    rst = pst.executeQuery();
                                                    while (rst.next()) {
                                                        i++;
                                                        a1 = rst.getString(1);
                                                        a2 = rst.getString(2);
                                                        a3 = rst.getString(3);
                                                        a4 = rst.getString(4);
                                                        a5 = rst.getString(5);
                                                        a6 = rst.getString(6);

                                    %>
                                    <td style="background-color: #f0f0f0;">



                                        <table height="200" width="180">




                                            <tr>

                                                <td style="color:#003300;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=a1%>


                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="color:#000099" colspan="2">
                                                    <a href="NGODetails.jsp?ProductID=<%=a1%>"><img width="150px" height="100px" src="UploadedImage/<%=a2%>" alt=""/></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="color:#000099" colspan="2" class="">
                                                    NGO name:
                                                </td>
                                                <td align="left" style="color:#e34343;"><%=a3%>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="color:#000099" colspan="2" class="">
                                                    Tagline:
                                                </td>
                                                <td align="left" style="color:#e34343;"><%=a5%>

                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="left" style="color:#000099" colspan="2" class="">Description:</td>
                                                <td align="left" style="color:#e34343;" ><%=a6%>

                                                </td>
                                            </tr>



                                        </table>

                                    </td>
                                    <%
                                                                                if (i % 3 == 0) {
                                    %>
                                </tr>
                                <tr>
                                    <%                                                              }
                                    %>

                                    <%                                                  }
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                    %>
                                </tr>
                            </table>
                        </form>
                    </form>
                </div>



                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->

        <!-- ####################################################################################################### -->
        <%@include file="footer.html" %>
    </body>
</html>