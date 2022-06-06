

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

                        <table width="100%">
                            <tr class="white-font">

                                <td width="8%">
                                    &nbsp;&nbsp;User&nbsp;ID&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;User&nbsp;Name&nbsp;&nbsp;
                                </td>
                                <td width="12%">
                                    &nbsp;&nbsp;First&nbsp;Name&nbsp;&nbsp;
                                </td>
                                <td width="12%">
                                    &nbsp;&nbsp;Last&nbsp;Name&nbsp;&nbsp;
                                </td>

                                <td width="10%">
                                    &nbsp;&nbsp;Gender&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;DOB&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;Contact&nbsp;No&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;Email&nbsp;ID&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;City&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;Pin Code&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;Country&nbsp;&nbsp;
                                </td>
                                  <td width="10%">
                                    &nbsp;&nbsp;Image&nbsp;&nbsp;
                                </td>
                            </tr>
                            <%
                                        Connection con = null;
                                        PreparedStatement pst = null;
                                        ResultSet rst = null;
                                        try {
                                            con = connection.Connect.makeCon();
                                            String query = "select userid,uname,firstname,lastname,gender,dob,contactno,emailid,city,pincode,country,image  from doctor";

                                            pst = con.prepareStatement(query);
                                            rst = pst.executeQuery();
                                            while (rst.next()) {

                            %>
                            <tr bgcolor="wheat">
                                <td><%= rst.getString(1)%></td>
                                <td><%= rst.getString(2)%></td>
                                <td><%= rst.getString(3)%></td>
                                <td><%= rst.getString(4)%></td>
                                <td><%= rst.getString(5)%></td>
                                <td><%= rst.getString(6)%></td>
                                <td><%= rst.getString(7)%></td>
                                <td><%= rst.getString(8)%></td>
                                <td><%= rst.getString(9)%></td>
                                <td><%= rst.getString(10)%></td>
                                <td><%= rst.getString(11)%></td>
                                  <td>
                                    <img src="UploadedImage/<%= rst.getString(12)%>" height="150x" width="200px;"/>
                                </td>
                            </tr>
                            <%

                                            }
                                        } catch (Exception e) {
                                        }


                            %>
                        </table>
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